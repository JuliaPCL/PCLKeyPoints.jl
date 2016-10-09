"""
The **pcl_keypoints** library contains implementations of two point cloud
keypoint detection algorithms

http://docs.pointclouds.org/trunk/group__keypoints.html

## Exports

$(EXPORTS)
"""
module PCLKeyPoints

using DocStringExtensions
using LibPCL
using PCLCommon
using Cxx

const libpcl_keypoints = LibPCL.find_library_e("libpcl_keypoints")
try
    Libdl.dlopen(libpcl_keypoints, Libdl.RTLD_GLOBAL)
catch e
    warn("You might need to set DYLD_LIBRARY_PATH to load dependencies proeprty.")
    rethrow(e)
end

end # module
