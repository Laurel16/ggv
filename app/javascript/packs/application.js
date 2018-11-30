//= require rails-ujs
//= require turbolinks
//= require jquery
//= require jquery.turbolinks
//= require_tree .

import 'bootstrap';


import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();


import { initUpdateNavbarOnScrollPages } from '../components/navbar';
initUpdateNavbarOnScrollPages();


import { parallax } from '../components/parallax';
parallax();

