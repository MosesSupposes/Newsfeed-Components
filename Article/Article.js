'use strict'

/**
 * Constants
 */

const articles = Array.from(document.getElementsByClassName('article'))

/**
 * Define class
 */

class Article {
  constructor(domElement) {
    this.domElement = domElement
    this.isExpanded = false
    this.expandButton = this.domElement.querySelector('.expandButton')
    this.expandButton.textContent = 'expand'
    this.expandButton.addEventListener(
      'click', () => this.isExpanded ? this.closeArticle() : this.expandArticle()
    )
  }

  expandArticle() {
    this.isExpanded = true
    this.domElement.classList.add('article-open')
    this.domElement.classList.remove('close')
    this.expandButton.textContent = 'close'
  }

  closeArticle() {
    this.isExpanded = false
    this.domElement.classList.add('close')
    this.domElement.classList.remove('article-open')
    this.expandButton.textContent = 'expand'
  }
}

/* START HERE:

- Select all classes named ".article" and assign that value to the articles variable.

- With your selection in place, now chain .forEach() on to the articles variable to iterate over the articles NodeList and create a new instance of Article by passing in each article as a parameter to the Article class.

*/

articles.forEach(makeArticle)

function makeArticle(article) {
  return new Article(article)
}
