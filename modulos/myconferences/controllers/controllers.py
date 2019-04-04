# -*- coding: utf-8 -*-
from odoo import http

# class Myconferences(http.Controller):
#     @http.route('/myconferences/myconferences/', auth='public')
#     def index(self, **kw):
#         return "Hello, world"

#     @http.route('/myconferences/myconferences/objects/', auth='public')
#     def list(self, **kw):
#         return http.request.render('myconferences.listing', {
#             'root': '/myconferences/myconferences',
#             'objects': http.request.env['myconferences.myconferences'].search([]),
#         })

#     @http.route('/myconferences/myconferences/objects/<model("myconferences.myconferences"):obj>/', auth='public')
#     def object(self, obj, **kw):
#         return http.request.render('myconferences.object', {
#             'object': obj
#         })