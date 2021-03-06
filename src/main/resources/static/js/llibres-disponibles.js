new Vue({
  el: '#app',

  async created() {
    const urlParams = new URLSearchParams(window.location.search);

    if (urlParams.get('filter') === 'user') {
      this.filteredByUser = true;
      try {
        this.books = await $.get('/api/books/user/' + urlParams.get('q'));
      } catch (err) {
        console.log(err);
      }
    } else {
      this.filter = urlParams.get('filter') || null;
      try {
        this.books = await $.get('/api/books');
      } catch (err) {
        console.log(err);
      }
    }

    if (this.filter) {
      this.inputFilterValue = urlParams.get('q') || '';
      this.selectFilterValue = urlParams.get('q') || '';
    }
  },

  data: {
    loggedIn: window.loggedIn,
    books: [],
    filter: null,
    inputFilterValue: '',
    selectFilterValue: '',
    initialRender: true,
    filteredByUser: false
  },

  watch: {
    filter() {
      if (this.initialRender) {
        this.initialRender = false;
        return;
      }

      if (! this.showSelect) {
        this.inputFilterValue = '';
      } else {
        this.selectFilterValue = this.options[0];
      }
    }
  },

  computed: {
    showSelect() {
      const selects = ['genre', 'theme', 'language', 'publisher'];

      return selects.includes(this.filter);
    },

    options() {
      const options = {
        genre: this.getOptions('genre'),
        language: this.getOptions('language'),
        publisher: this.getOptions('publisher'),
        theme: this.getOptions('theme')
      };

      return options.hasOwnProperty(this.filter) ? options[this.filter] : [];
    },

    booksShown() {
      return this.books.filter(b => b.bookStatusId === 1).filter(b => {
        if (!this.filter || (this.filter && this.showSelect && !this.selectFilterValue) || (this.filter && ! this.showSelect && ! this.inputFilterValue)) return true;

        if (this.filter === 'title') {
          return new RegExp(this.inputFilterValue, 'i').test(b[this.filter]);
        } else if (this.filter === 'author') {
          return new RegExp(this.inputFilterValue, 'i').test(b.author.name);
        } else if (this.filter === 'owner') {
          return b.userId === this.inputFilterValue;
        } else {
          return b[this.filter].name === this.selectFilterValue;
        }
      });
    },
    fromUserText() {
      return this.books.length ? `de l'usuari ${this.books[0].user.username}` : '';
    }
  },

  methods: {
    getOptions(prop) {
      return this.books.map(el => el[prop].name).filter((el, index, self) => self.indexOf(el) === index).sort();
    },
  }
});