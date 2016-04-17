module PCLKeyPoints

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
