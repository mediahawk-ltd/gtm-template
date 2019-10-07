___INFO___

{
  "displayName": "Mediahawk Call Tracking",
  "description": "Easily add the Mediahawk call tracking code to your website.",
  "securityGroups": [],
  "id": "cvt_temp_public_id",
  "type": "TAG",
  "version": 1,
  "brand": {
    "displayName": "",
    "id": "brand_dummy"
  },
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "displayName": "Mediahawk Campaign ID",
    "simpleValueType": true,
    "name": "campaignId",
    "type": "TEXT"
  }
]


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_mhct"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://www.dynamicnumbers.mediahawk.co.uk/mhct.min.js"
              },
              {
                "type": 1,
                "string": "https://www.dynamicnumbers.mediahawk.co.uk/mhct.js"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const setInWindow = require('setInWindow');
setInWindow('_mhct', [['mhCampaignID', data.campaignId]]);

const injectScript = require('injectScript');
injectScript('https://www.dynamicnumbers.mediahawk.co.uk/mhct.js', data.gtmOnSuccess, data.gtmOnFailure, 'https://www.dynamicnumbers.mediahawk.co.uk/mhct.js');


___NOTES___

Created on 07/10/2019, 13:42:38
