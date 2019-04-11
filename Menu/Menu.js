'use strict'

/**
 * Constants
 */

const menu = document.querySelector('.menu')
const menuButton = document.querySelector('.menu-button')

/**
 * Define function
 */

const toggleMenu = () => {
  menu.classList.toggle("menu--open")
}

/**
 * Add event listener
 */

menuButton.addEventListener('click', toggleMenu)
