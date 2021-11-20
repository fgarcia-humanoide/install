# -*- coding: utf-8 -*-
# from odoo import http


# class Supermodulo2(http.Controller):
#     @http.route('/supermodulo2/supermodulo2/', auth='public')
#     def index(self, **kw):
#         return "Hello, world"

#     @http.route('/supermodulo2/supermodulo2/objects/', auth='public')
#     def list(self, **kw):
#         return http.request.render('supermodulo2.listing', {
#             'root': '/supermodulo2/supermodulo2',
#             'objects': http.request.env['supermodulo2.supermodulo2'].search([]),
#         })

#     @http.route('/supermodulo2/supermodulo2/objects/<model("supermodulo2.supermodulo2"):obj>/', auth='public')
#     def object(self, obj, **kw):
#         return http.request.render('supermodulo2.object', {
#             'object': obj
#         })
