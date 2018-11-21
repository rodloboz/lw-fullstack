import Mark from 'mark.js';

const highlightSearchText = function () {
  const movies = document.getElementById('movies');

  if (movies) {
    const query = movies.dataset.query;
    const context = movies.querySelectorAll('.context');
    const highlighter = new Mark(context);

    highlighter.mark(query);
  }
}

export { highlightSearchText };
