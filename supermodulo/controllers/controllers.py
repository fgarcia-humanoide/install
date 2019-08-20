# -*- coding: utf-8 -*-
from odoo import http

# class /root/supermodulo(http.Controller):
#     @http.route('//root/supermodulo//root/supermodulo/', auth='public')
#     def index(self, **kw):
#         return "Hello, world"

#     @http.route('//root/supermodulo//root/supermodulo/objects/', auth='public')
#     def list(self, **kw):
#         return http.request.render('/root/supermodulo.listing', {
#             'root': '//root/supermodulo//root/supermodulo',
#             'objects': http.request.env['/root/supermodulo./root/supermodulo'].search([]),
#         })

#     @http.route('//root/supermodulo//root/supermodulo/objects/<model("/root/supermodulo./root/supermodulo"):obj>/', auth='public')
#     def object(self, obj, **kw):
#         return http.request.render('/root/supermodulo.object', {
#             'object': obj
#         })