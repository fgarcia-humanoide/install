# -*- coding: utf-8 -*-
# from odoo import http


# class Supermodulo15(http.Controller):
#     @http.route('/supermodulo15/supermodulo15', auth='public')
#     def index(self, **kw):
#         return "Hello, world"

#     @http.route('/supermodulo15/supermodulo15/objects', auth='public')
#     def list(self, **kw):
#         return http.request.render('supermodulo15.listing', {
#             'root': '/supermodulo15/supermodulo15',
#             'objects': http.request.env['supermodulo15.supermodulo15'].search([]),
#         })

#     @http.route('/supermodulo15/supermodulo15/objects/<model("supermodulo15.supermodulo15"):obj>', auth='public')
#     def object(self, obj, **kw):
#         return http.request.render('supermodulo15.object', {
#             'object': obj
#         })
