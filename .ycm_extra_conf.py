def Settings( **kwargs ):
    flags = ['-x', 'c++',]

    flags += [
        '-std=c++17',
        '-stdlib=libc++',
    ]

    # echo | clang -v -E -x c++ -
    flags += [
        '-isystem', '/usr/include/c++/8',
        '-isystem', '/usr/include/c++/8/x86_64-redhat-linux',
        '-isystem', '/usr/include/c++/8/backward',
    ]

    flags += [
        '-Wall', '-Wextra', '-Werror',
        '-Wshadow',
        '-Wnon-virtual-dtor',
        '-Wold-style-cast',
        '-Wcast-align',
        '-Wunused',
        '-Woverloaded-virtual',
        '-Wpedantic',
        '-Wconversion',
        '-Wsign-conversion',
        '-Wnull-dereference',
        '-Wdouble-promotion',
        '-Wformat=2',
    ]

    return {'flags': flags}
