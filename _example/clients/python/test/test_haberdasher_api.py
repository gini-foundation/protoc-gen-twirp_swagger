# coding: utf-8

"""
    service.proto

    No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)  # noqa: E501

    OpenAPI spec version: version not set
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


from __future__ import absolute_import

import unittest

import swagger_client
from swagger_client.api.haberdasher_api import HaberdasherApi  # noqa: E501
from swagger_client.rest import ApiException


class TestHaberdasherApi(unittest.TestCase):
    """HaberdasherApi unit test stubs"""

    def setUp(self):
        self.api = swagger_client.api.haberdasher_api.HaberdasherApi()  # noqa: E501

    def tearDown(self):
        pass

    def test_make_hat(self):
        """Test case for make_hat

        MakeHat produces a hat of mysterious, randomly-selected color!  # noqa: E501
        """
        pass


if __name__ == '__main__':
    unittest.main()
