#
# Copyright (C) 2025 Salvo Giangreco
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

# SEC Floating Feature configuration file for Galaxy A71 (a71)

# Camera VENDOR_LIB_INFO - match S23FE for post-processing compatibility
SEC_FLOATING_FEATURE_CAMERA_CONFIG_VENDOR_LIB_INFO=beauty.samsung.v4,face_landmark.arcsoft.v2_1,facial_attribute.samsung.v1,swuwdc.arcsoft.v1,event_detection.samsung.v2,food.samsung.v1,selfie_correction.samsung.v1,dual_bokeh.samsung.v1,single_bokeh.samsung.v2,image_enhance.arcsoft.v1,scene_detection.samsung.v1,smart_scan.samsung.v2,mfhdr.arcsoft.v1,llhdr.arcsoft.v1,human_tracking.arcsoft.v2_1,localtm.samsung.v1_1,image_codec.samsung.v2,super_night.mpi.v2,super_resolution_raw.arcsoft.v1,fr_tracking.arcsoft.v1,aebhdr.arcsoft.v1,hybridhdr.arcsoft.v1,pro_single_rgb.mpi.v1,fusion_high_res.arcsoft.v1,facial_restoration.arcsoft.v1

# Enable AOD live clock
SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM=activeclock=7,aodversion=7,clocktransition,coverboldfont

# Enable extra brightness feature
SEC_FLOATING_FEATURE_LCD_SUPPORT_EXTRA_BRIGHTNESS=TRUE

# Enable Video brightness feature
SEC_FLOATING_FEATURE_COMMON_SUPPORT_HDR_EFFECT=true

# Enable Motion Photo
SEC_FLOATING_FEATURE_CAMERA_CONFIG_MOTIONPHOTO_CAPTURE_MODE=3

# Enable V5 Face Clustering
SEC_FLOATING_FEATURE_GALLERY_CONFIG_FACE_CLUSTER_VERSION=SRCB_V5

# Enable V901 Image Tagger
SEC_FLOATING_FEATURE_GALLERY_CONFIG_IMAGE_TAGGER_VERSION=V901

# Enable V1001 Pet Cluster
SEC_FLOATING_FEATURE_GALLERY_CONFIG_PET_CLUSTER_VERSION=V1001