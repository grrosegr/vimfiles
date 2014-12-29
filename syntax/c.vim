" Vim syntax file

"--------------------------------------------------------------------
"  almost all functions in C89/C99/unistd.h
"--------------------------------------------------------------------
syn keyword cSysFunc    __assert_fail
syn keyword cSysFunc    __assert_perror_fail
syn keyword cSysFunc    __assert
syn keyword cSysFunc    __ctype_b_loc
syn keyword cSysFunc    __ctype_tolower_loc
syn keyword cSysFunc    __ctype_toupper_loc
syn keyword cSysFunc    tolower
syn keyword cSysFunc    toupper
syn keyword cSysFunc    isctype
syn keyword cSysFunc    isascii
syn keyword cSysFunc    toascii
syn keyword cSysFunc    __tolower_l
syn keyword cSysFunc    tolower_l
syn keyword cSysFunc    __toupper_l
syn keyword cSysFunc    toupper_l
syn keyword cSysFunc    setlocale
syn keyword cSysFunc    localeconv
syn keyword cSysFunc    newlocale
syn keyword cSysFunc    duplocale
syn keyword cSysFunc    freelocale
syn keyword cSysFunc    uselocale
syn keyword cSysFunc    __nldbl_nexttowardf
syn keyword cSysFunc    __REDIRECT_NTH
syn keyword cSysFunc    __REDIRECT_NTH
syn keyword cSysFunc    __REDIRECT_NTH
syn keyword cSysFunc    matherr
syn keyword cSysFunc    matherr
syn keyword cSysFunc    setjmp
syn keyword cSysFunc    __sigsetjmp
syn keyword cSysFunc    _setjmp
syn keyword cSysFunc    longjmp
syn keyword cSysFunc    _longjmp
syn keyword cSysFunc    siglongjmp
syn keyword cSysFunc    __sysv_signal
syn keyword cSysFunc    sysv_signal
syn keyword cSysFunc    signal
syn keyword cSysFunc    __REDIRECT_NTH
syn keyword cSysFunc    bsd_signal
syn keyword cSysFunc    kill
syn keyword cSysFunc    killpg
syn keyword cSysFunc    raise
syn keyword cSysFunc    ssignal
syn keyword cSysFunc    gsignal
syn keyword cSysFunc    psignal
syn keyword cSysFunc    psiginfo
syn keyword cSysFunc    __sigpause
syn keyword cSysFunc    sigpause
syn keyword cSysFunc    sigpause
syn keyword cSysFunc    sigblock
syn keyword cSysFunc    sigsetmask
syn keyword cSysFunc    siggetmask
syn keyword cSysFunc    sigemptyset
syn keyword cSysFunc    sigfillset
syn keyword cSysFunc    sigaddset
syn keyword cSysFunc    sigdelset
syn keyword cSysFunc    sigismember
syn keyword cSysFunc    sigisemptyset
syn keyword cSysFunc    sigandset
syn keyword cSysFunc    sigorset
syn keyword cSysFunc    sigprocmask
syn keyword cSysFunc    sigsuspend
syn keyword cSysFunc    sigaction
syn keyword cSysFunc    sigpending
syn keyword cSysFunc    sigwait
syn keyword cSysFunc    sigwaitinfo
syn keyword cSysFunc    sigtimedwait
syn keyword cSysFunc    sigqueue
syn keyword cSysFunc    sigvec
syn keyword cSysFunc    sigreturn
syn keyword cSysFunc    siginterrupt
syn keyword cSysFunc    sigstack
syn keyword cSysFunc    sigaltstack
syn keyword cSysFunc    sighold
syn keyword cSysFunc    sigrelse
syn keyword cSysFunc    sigignore
syn keyword cSysFunc    sigset
syn keyword cSysFunc    __libc_current_sigrtmin
syn keyword cSysFunc    __libc_current_sigrtmax
syn keyword cSysFunc    remove
syn keyword cSysFunc    rename
syn keyword cSysFunc    renameat
syn keyword cSysFunc    tmpfile
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    tmpfile64
syn keyword cSysFunc    tmpnam
syn keyword cSysFunc    tmpnam_r
syn keyword cSysFunc    tempnam
syn keyword cSysFunc    fclose
syn keyword cSysFunc    fflush
syn keyword cSysFunc    fflush_unlocked
syn keyword cSysFunc    fcloseall
syn keyword cSysFunc    fopen
syn keyword cSysFunc    freopen
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    fopen64
syn keyword cSysFunc    freopen64
syn keyword cSysFunc    fdopen
syn keyword cSysFunc    fopencookie
syn keyword cSysFunc    fmemopen
syn keyword cSysFunc    open_memstream
syn keyword cSysFunc    setbuf
syn keyword cSysFunc    setvbuf
syn keyword cSysFunc    setbuffer
syn keyword cSysFunc    setlinebuf
syn keyword cSysFunc    fprintf
syn keyword cSysFunc    printf
syn keyword cSysFunc    sprintf
syn keyword cSysFunc    vfprintf
syn keyword cSysFunc    vprintf
syn keyword cSysFunc    vsprintf
syn keyword cSysFunc    snprintf
syn keyword cSysFunc    vsnprintf
syn keyword cSysFunc    vasprintf
syn keyword cSysFunc    __asprintf
syn keyword cSysFunc    asprintf
syn keyword cSysFunc    vdprintf
syn keyword cSysFunc    dprintf
syn keyword cSysFunc    fscanf
syn keyword cSysFunc    scanf
syn keyword cSysFunc    sscanf
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    __isoc99_fscanf
syn keyword cSysFunc    __isoc99_scanf
syn keyword cSysFunc    __isoc99_sscanf
syn keyword cSysFunc    vfscanf
syn keyword cSysFunc    vscanf
syn keyword cSysFunc    vsscanf
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    __isoc99_vfscanf
syn keyword cSysFunc    __isoc99_vscanf
syn keyword cSysFunc    __isoc99_vsscanf
syn keyword cSysFunc    fgetc
syn keyword cSysFunc    getc
syn keyword cSysFunc    getchar
syn keyword cSysFunc    getc_unlocked
syn keyword cSysFunc    getchar_unlocked
syn keyword cSysFunc    fgetc_unlocked
syn keyword cSysFunc    fputc
syn keyword cSysFunc    putc
syn keyword cSysFunc    putchar
syn keyword cSysFunc    fputc_unlocked
syn keyword cSysFunc    putc_unlocked
syn keyword cSysFunc    putchar_unlocked
syn keyword cSysFunc    getw
syn keyword cSysFunc    putw
syn keyword cSysFunc    fgets
syn keyword cSysFunc    gets
syn keyword cSysFunc    fgets_unlocked
syn keyword cSysFunc    __getdelim
syn keyword cSysFunc    getdelim
syn keyword cSysFunc    getline
syn keyword cSysFunc    fputs
syn keyword cSysFunc    puts
syn keyword cSysFunc    ungetc
syn keyword cSysFunc    fread
syn keyword cSysFunc    fwrite
syn keyword cSysFunc    fputs_unlocked
syn keyword cSysFunc    fread_unlocked
syn keyword cSysFunc    fwrite_unlocked
syn keyword cSysFunc    fseek
syn keyword cSysFunc    ftell
syn keyword cSysFunc    rewind
syn keyword cSysFunc    fseeko
syn keyword cSysFunc    ftello
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    fgetpos
syn keyword cSysFunc    fsetpos
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    fseeko64
syn keyword cSysFunc    ftello64
syn keyword cSysFunc    fgetpos64
syn keyword cSysFunc    fsetpos64
syn keyword cSysFunc    clearerr
syn keyword cSysFunc    feof
syn keyword cSysFunc    ferror
syn keyword cSysFunc    clearerr_unlocked
syn keyword cSysFunc    feof_unlocked
syn keyword cSysFunc    ferror_unlocked
syn keyword cSysFunc    perror
syn keyword cSysFunc    fileno
syn keyword cSysFunc    fileno_unlocked
syn keyword cSysFunc    popen
syn keyword cSysFunc    pclose
syn keyword cSysFunc    ctermid
syn keyword cSysFunc    cuserid
syn keyword cSysFunc    obstack_printf
syn keyword cSysFunc    obstack_vprintf
syn keyword cSysFunc    flockfile
syn keyword cSysFunc    ftrylockfile
syn keyword cSysFunc    funlockfile
syn keyword cSysFunc    memcpy
syn keyword cSysFunc    memmove
syn keyword cSysFunc    memccpy
syn keyword cSysFunc    memset
syn keyword cSysFunc    memcmp
syn keyword cSysFunc    memchr
syn keyword cSysFunc    memchr
syn keyword cSysFunc    memchr
syn keyword cSysFunc    rawmemchr
syn keyword cSysFunc    rawmemchr
syn keyword cSysFunc    rawmemchr
syn keyword cSysFunc    memrchr
syn keyword cSysFunc    memrchr
syn keyword cSysFunc    memrchr
syn keyword cSysFunc    strcpy
syn keyword cSysFunc    strncpy
syn keyword cSysFunc    strcat
syn keyword cSysFunc    strncat
syn keyword cSysFunc    strcmp
syn keyword cSysFunc    strncmp
syn keyword cSysFunc    strcoll
syn keyword cSysFunc    strxfrm
syn keyword cSysFunc    strcoll_l
syn keyword cSysFunc    strxfrm_l
syn keyword cSysFunc    strdup
syn keyword cSysFunc    strndup
syn keyword cSysFunc    strchr
syn keyword cSysFunc    strchr
syn keyword cSysFunc    strchr
syn keyword cSysFunc    strrchr
syn keyword cSysFunc    strrchr
syn keyword cSysFunc    strrchr
syn keyword cSysFunc    strchrnul
syn keyword cSysFunc    strchrnul
syn keyword cSysFunc    strchrnul
syn keyword cSysFunc    strcspn
syn keyword cSysFunc    strspn
syn keyword cSysFunc    strpbrk
syn keyword cSysFunc    strpbrk
syn keyword cSysFunc    strpbrk
syn keyword cSysFunc    strstr
syn keyword cSysFunc    strstr
syn keyword cSysFunc    strstr
syn keyword cSysFunc    strtok
syn keyword cSysFunc    __strtok_r
syn keyword cSysFunc    strtok_r
syn keyword cSysFunc    strcasestr
syn keyword cSysFunc    strcasestr
syn keyword cSysFunc    strcasestr
syn keyword cSysFunc    memmem
syn keyword cSysFunc    __mempcpy
syn keyword cSysFunc    mempcpy
syn keyword cSysFunc    strlen
syn keyword cSysFunc    strnlen
syn keyword cSysFunc    strerror
syn keyword cSysFunc    __REDIRECT_NTH
syn keyword cSysFunc    __xpg_strerror_r
syn keyword cSysFunc    strerror_r
syn keyword cSysFunc    strerror_l
syn keyword cSysFunc    __bzero
syn keyword cSysFunc    bcopy
syn keyword cSysFunc    bzero
syn keyword cSysFunc    bcmp
syn keyword cSysFunc    index
syn keyword cSysFunc    index
syn keyword cSysFunc    index
syn keyword cSysFunc    rindex
syn keyword cSysFunc    rindex
syn keyword cSysFunc    rindex
syn keyword cSysFunc    ffs
syn keyword cSysFunc    ffsl
syn keyword cSysFunc    ffsll
syn keyword cSysFunc    strcasecmp
syn keyword cSysFunc    strncasecmp
syn keyword cSysFunc    strcasecmp_l
syn keyword cSysFunc    strncasecmp_l
syn keyword cSysFunc    strsep
syn keyword cSysFunc    strsignal
syn keyword cSysFunc    __stpcpy
syn keyword cSysFunc    stpcpy
syn keyword cSysFunc    __stpncpy
syn keyword cSysFunc    stpncpy
syn keyword cSysFunc    strverscmp
syn keyword cSysFunc    strfry
syn keyword cSysFunc    memfrob
syn keyword cSysFunc    basename
syn keyword cSysFunc    basename
syn keyword cSysFunc    basename
syn keyword cSysFunc    __ctype_get_mb_cur_max
syn keyword cSysFunc    atof
syn keyword cSysFunc    atoi
syn keyword cSysFunc    atol
syn keyword cSysFunc    atoll
syn keyword cSysFunc    strtod
syn keyword cSysFunc    strtof
syn keyword cSysFunc    strtold
syn keyword cSysFunc    strtol
syn keyword cSysFunc    strtoul
syn keyword cSysFunc    strtoq
syn keyword cSysFunc    strtouq
syn keyword cSysFunc    strtoll
syn keyword cSysFunc    strtoull
syn keyword cSysFunc    strtol_l
syn keyword cSysFunc    strtoul_l
syn keyword cSysFunc    strtoll_l
syn keyword cSysFunc    strtoull_l
syn keyword cSysFunc    strtod_l
syn keyword cSysFunc    strtof_l
syn keyword cSysFunc    strtold_l
syn keyword cSysFunc    l64a
syn keyword cSysFunc    a64l
syn keyword cSysFunc    random
syn keyword cSysFunc    srandom
syn keyword cSysFunc    initstate
syn keyword cSysFunc    setstate
syn keyword cSysFunc    random_r
syn keyword cSysFunc    srandom_r
syn keyword cSysFunc    initstate_r
syn keyword cSysFunc    setstate_r
syn keyword cSysFunc    rand
syn keyword cSysFunc    srand
syn keyword cSysFunc    rand_r
syn keyword cSysFunc    drand48
syn keyword cSysFunc    erand48
syn keyword cSysFunc    lrand48
syn keyword cSysFunc    nrand48
syn keyword cSysFunc    mrand48
syn keyword cSysFunc    jrand48
syn keyword cSysFunc    srand48
syn keyword cSysFunc    seed48
syn keyword cSysFunc    lcong48
syn keyword cSysFunc    drand48_r
syn keyword cSysFunc    erand48_r
syn keyword cSysFunc    lrand48_r
syn keyword cSysFunc    nrand48_r
syn keyword cSysFunc    mrand48_r
syn keyword cSysFunc    jrand48_r
syn keyword cSysFunc    srand48_r
syn keyword cSysFunc    seed48_r
syn keyword cSysFunc    lcong48_r
syn keyword cSysFunc    malloc
syn keyword cSysFunc    calloc
syn keyword cSysFunc    realloc
syn keyword cSysFunc    free
syn keyword cSysFunc    cfree
syn keyword cSysFunc    valloc
syn keyword cSysFunc    posix_memalign
syn keyword cSysFunc    abort
syn keyword cSysFunc    atexit
syn keyword cSysFunc    at_quick_exit
syn keyword cSysFunc    on_exit
syn keyword cSysFunc    exit
syn keyword cSysFunc    quick_exit
syn keyword cSysFunc    _Exit
syn keyword cSysFunc    getenv
syn keyword cSysFunc    __secure_getenv
syn keyword cSysFunc    putenv
syn keyword cSysFunc    setenv
syn keyword cSysFunc    unsetenv
syn keyword cSysFunc    clearenv
syn keyword cSysFunc    mktemp
syn keyword cSysFunc    mkstemp
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    mkstemp64
syn keyword cSysFunc    mkstemps
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    mkstemps64
syn keyword cSysFunc    mkdtemp
syn keyword cSysFunc    mkostemp
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    mkostemp64
syn keyword cSysFunc    mkostemps
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    mkostemps64
syn keyword cSysFunc    system
syn keyword cSysFunc    canonicalize_file_name
syn keyword cSysFunc    realpath
syn keyword cSysFunc    bsearch
syn keyword cSysFunc    qsort
syn keyword cSysFunc    qsort_r
syn keyword cSysFunc    abs
syn keyword cSysFunc    labs
syn keyword cSysFunc    llabs
syn keyword cSysFunc    div
syn keyword cSysFunc    ldiv
syn keyword cSysFunc    lldiv
syn keyword cSysFunc    ecvt
syn keyword cSysFunc    fcvt
syn keyword cSysFunc    gcvt
syn keyword cSysFunc    qecvt
syn keyword cSysFunc    qfcvt
syn keyword cSysFunc    qgcvt
syn keyword cSysFunc    ecvt_r
syn keyword cSysFunc    fcvt_r
syn keyword cSysFunc    qecvt_r
syn keyword cSysFunc    qfcvt_r
syn keyword cSysFunc    mblen
syn keyword cSysFunc    mbtowc
syn keyword cSysFunc    wctomb
syn keyword cSysFunc    mbstowcs
syn keyword cSysFunc    wcstombs
syn keyword cSysFunc    rpmatch
syn keyword cSysFunc    getsubopt
syn keyword cSysFunc    setkey
syn keyword cSysFunc    posix_openpt
syn keyword cSysFunc    grantpt
syn keyword cSysFunc    unlockpt
syn keyword cSysFunc    ptsname
syn keyword cSysFunc    ptsname_r
syn keyword cSysFunc    getpt
syn keyword cSysFunc    getloadavg
syn keyword cSysFunc    clock
syn keyword cSysFunc    time
syn keyword cSysFunc    difftime
syn keyword cSysFunc    mktime
syn keyword cSysFunc    strftime
syn keyword cSysFunc    strptime
syn keyword cSysFunc    strftime_l
syn keyword cSysFunc    strptime_l
syn keyword cSysFunc    gmtime
syn keyword cSysFunc    localtime
syn keyword cSysFunc    gmtime_r
syn keyword cSysFunc    localtime_r
syn keyword cSysFunc    asctime
syn keyword cSysFunc    ctime
syn keyword cSysFunc    asctime_r
syn keyword cSysFunc    ctime_r
syn keyword cSysFunc    tzset
syn keyword cSysFunc    stime
syn keyword cSysFunc    timegm
syn keyword cSysFunc    timelocal
syn keyword cSysFunc    dysize
syn keyword cSysFunc    nanosleep
syn keyword cSysFunc    clock_getres
syn keyword cSysFunc    clock_gettime
syn keyword cSysFunc    clock_settime
syn keyword cSysFunc    clock_nanosleep
syn keyword cSysFunc    clock_getcpuclockid
syn keyword cSysFunc    timer_create
syn keyword cSysFunc    timer_delete
syn keyword cSysFunc    timer_settime
syn keyword cSysFunc    timer_gettime
syn keyword cSysFunc    timer_getoverrun
syn keyword cSysFunc    getdate
syn keyword cSysFunc    getdate_r
syn keyword cSysFunc    feclearexcept
syn keyword cSysFunc    fegetexceptflag
syn keyword cSysFunc    feraiseexcept
syn keyword cSysFunc    fesetexceptflag
syn keyword cSysFunc    fetestexcept
syn keyword cSysFunc    fegetround
syn keyword cSysFunc    fesetround
syn keyword cSysFunc    fegetenv
syn keyword cSysFunc    feholdexcept
syn keyword cSysFunc    fesetenv
syn keyword cSysFunc    feupdateenv
syn keyword cSysFunc    feenableexcept
syn keyword cSysFunc    fedisableexcept
syn keyword cSysFunc    fegetexcept
syn keyword cSysFunc    imaxabs
syn keyword cSysFunc    imaxdiv
syn keyword cSysFunc    strtoimax
syn keyword cSysFunc    strtoumax
syn keyword cSysFunc    wcstoimax
syn keyword cSysFunc    wcstoumax
syn keyword cSysFunc    __strtol_internal
syn keyword cSysFunc    __strtoul_internal
syn keyword cSysFunc    __wcstol_internal
syn keyword cSysFunc    __wcstoul_internal
syn keyword cSysFunc    __strtoll_internal
syn keyword cSysFunc    __strtoull_internal
syn keyword cSysFunc    __wcstoll_internal
syn keyword cSysFunc    __wcstoull_internal
syn keyword cSysFunc    wcscpy
syn keyword cSysFunc    wcsncpy
syn keyword cSysFunc    wcscat
syn keyword cSysFunc    wcsncat
syn keyword cSysFunc    wcscmp
syn keyword cSysFunc    wcsncmp
syn keyword cSysFunc    wcscasecmp
syn keyword cSysFunc    wcsncasecmp
syn keyword cSysFunc    wcscasecmp_l
syn keyword cSysFunc    wcsncasecmp_l
syn keyword cSysFunc    wcscoll
syn keyword cSysFunc    wcsxfrm
syn keyword cSysFunc    wcscoll_l
syn keyword cSysFunc    wcsxfrm_l
syn keyword cSysFunc    wcsdup
syn keyword cSysFunc    wcschr
syn keyword cSysFunc    wcschr
syn keyword cSysFunc    wcschr
syn keyword cSysFunc    wcsrchr
syn keyword cSysFunc    wcsrchr
syn keyword cSysFunc    wcsrchr
syn keyword cSysFunc    wcschrnul
syn keyword cSysFunc    wcscspn
syn keyword cSysFunc    wcsspn
syn keyword cSysFunc    wcspbrk
syn keyword cSysFunc    wcspbrk
syn keyword cSysFunc    wcspbrk
syn keyword cSysFunc    wcsstr
syn keyword cSysFunc    wcsstr
syn keyword cSysFunc    wcsstr
syn keyword cSysFunc    wcstok
syn keyword cSysFunc    wcslen
syn keyword cSysFunc    wcswcs
syn keyword cSysFunc    wcswcs
syn keyword cSysFunc    wcswcs
syn keyword cSysFunc    wcsnlen
syn keyword cSysFunc    wmemchr
syn keyword cSysFunc    wmemchr
syn keyword cSysFunc    wmemchr
syn keyword cSysFunc    wmemcmp
syn keyword cSysFunc    wmemcpy
syn keyword cSysFunc    wmemmove
syn keyword cSysFunc    wmemset
syn keyword cSysFunc    wmempcpy
syn keyword cSysFunc    btowc
syn keyword cSysFunc    wctob
syn keyword cSysFunc    mbsinit
syn keyword cSysFunc    mbrtowc
syn keyword cSysFunc    wcrtomb
syn keyword cSysFunc    __mbrlen
syn keyword cSysFunc    mbrlen
syn keyword cSysFunc    __btowc_alias
syn keyword cSysFunc    __wctob_alias
syn keyword cSysFunc    mbsrtowcs
syn keyword cSysFunc    wcsrtombs
syn keyword cSysFunc    mbsnrtowcs
syn keyword cSysFunc    wcsnrtombs
syn keyword cSysFunc    wcwidth
syn keyword cSysFunc    wcswidth
syn keyword cSysFunc    wcstod
syn keyword cSysFunc    wcstof
syn keyword cSysFunc    wcstold
syn keyword cSysFunc    wcstol
syn keyword cSysFunc    wcstoul
syn keyword cSysFunc    wcstoll
syn keyword cSysFunc    wcstoull
syn keyword cSysFunc    wcstoq
syn keyword cSysFunc    wcstouq
syn keyword cSysFunc    wcstol_l
syn keyword cSysFunc    wcstoul_l
syn keyword cSysFunc    wcstoll_l
syn keyword cSysFunc    wcstoull_l
syn keyword cSysFunc    wcstod_l
syn keyword cSysFunc    wcstof_l
syn keyword cSysFunc    wcstold_l
syn keyword cSysFunc    wcpcpy
syn keyword cSysFunc    wcpncpy
syn keyword cSysFunc    open_wmemstream
syn keyword cSysFunc    fwide
syn keyword cSysFunc    fwprintf
syn keyword cSysFunc    wprintf
syn keyword cSysFunc    swprintf
syn keyword cSysFunc    vfwprintf
syn keyword cSysFunc    vwprintf
syn keyword cSysFunc    vswprintf
syn keyword cSysFunc    fwscanf
syn keyword cSysFunc    wscanf
syn keyword cSysFunc    swscanf
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    __isoc99_fwscanf
syn keyword cSysFunc    __isoc99_wscanf
syn keyword cSysFunc    __isoc99_swscanf
syn keyword cSysFunc    vfwscanf
syn keyword cSysFunc    vwscanf
syn keyword cSysFunc    vswscanf
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    __isoc99_vfwscanf
syn keyword cSysFunc    __isoc99_vwscanf
syn keyword cSysFunc    __isoc99_vswscanf
syn keyword cSysFunc    fgetwc
syn keyword cSysFunc    getwc
syn keyword cSysFunc    getwchar
syn keyword cSysFunc    fputwc
syn keyword cSysFunc    putwc
syn keyword cSysFunc    putwchar
syn keyword cSysFunc    fgetws
syn keyword cSysFunc    fputws
syn keyword cSysFunc    ungetwc
syn keyword cSysFunc    getwc_unlocked
syn keyword cSysFunc    getwchar_unlocked
syn keyword cSysFunc    fgetwc_unlocked
syn keyword cSysFunc    fputwc_unlocked
syn keyword cSysFunc    putwc_unlocked
syn keyword cSysFunc    putwchar_unlocked
syn keyword cSysFunc    fgetws_unlocked
syn keyword cSysFunc    fputws_unlocked
syn keyword cSysFunc    wcsftime
syn keyword cSysFunc    wcsftime_l
syn keyword cSysFunc    iswalnum
syn keyword cSysFunc    iswalpha
syn keyword cSysFunc    iswcntrl
syn keyword cSysFunc    iswdigit
syn keyword cSysFunc    iswgraph
syn keyword cSysFunc    iswlower
syn keyword cSysFunc    iswprint
syn keyword cSysFunc    iswpunct
syn keyword cSysFunc    iswspace
syn keyword cSysFunc    iswupper
syn keyword cSysFunc    iswxdigit
syn keyword cSysFunc    iswblank
syn keyword cSysFunc    wctype
syn keyword cSysFunc    iswctype
syn keyword cSysFunc    towlower
syn keyword cSysFunc    towupper
syn keyword cSysFunc    wctrans
syn keyword cSysFunc    towctrans
syn keyword cSysFunc    iswalnum_l
syn keyword cSysFunc    iswalpha_l
syn keyword cSysFunc    iswcntrl_l
syn keyword cSysFunc    iswdigit_l
syn keyword cSysFunc    iswgraph_l
syn keyword cSysFunc    iswlower_l
syn keyword cSysFunc    iswprint_l
syn keyword cSysFunc    iswpunct_l
syn keyword cSysFunc    iswspace_l
syn keyword cSysFunc    iswupper_l
syn keyword cSysFunc    iswxdigit_l
syn keyword cSysFunc    iswblank_l
syn keyword cSysFunc    wctype_l
syn keyword cSysFunc    iswctype_l
syn keyword cSysFunc    towlower_l
syn keyword cSysFunc    towupper_l
syn keyword cSysFunc    wctrans_l
syn keyword cSysFunc    towctrans_l
syn keyword cSysFunc    access
syn keyword cSysFunc    euidaccess
syn keyword cSysFunc    eaccess
syn keyword cSysFunc    faccessat
syn keyword cSysFunc    lseek
syn keyword cSysFunc    __REDIRECT_NTH
syn keyword cSysFunc    lseek64
syn keyword cSysFunc    close
syn keyword cSysFunc    read
syn keyword cSysFunc    write
syn keyword cSysFunc    pread
syn keyword cSysFunc    pwrite
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    pread64
syn keyword cSysFunc    pwrite64
syn keyword cSysFunc    pipe
syn keyword cSysFunc    pipe2
syn keyword cSysFunc    alarm
syn keyword cSysFunc    sleep
syn keyword cSysFunc    ualarm
syn keyword cSysFunc    usleep
syn keyword cSysFunc    pause
syn keyword cSysFunc    chown
syn keyword cSysFunc    fchown
syn keyword cSysFunc    lchown
syn keyword cSysFunc    fchownat
syn keyword cSysFunc    chdir
syn keyword cSysFunc    fchdir
syn keyword cSysFunc    getcwd
syn keyword cSysFunc    get_current_dir_name
syn keyword cSysFunc    getwd
syn keyword cSysFunc    dup
syn keyword cSysFunc    dup2
syn keyword cSysFunc    dup3
syn keyword cSysFunc    execve
syn keyword cSysFunc    fexecve
syn keyword cSysFunc    execv
syn keyword cSysFunc    execle
syn keyword cSysFunc    execl
syn keyword cSysFunc    execvp
syn keyword cSysFunc    execlp
syn keyword cSysFunc    execvpe
syn keyword cSysFunc    nice
syn keyword cSysFunc    _exit
syn keyword cSysFunc    pathconf
syn keyword cSysFunc    fpathconf
syn keyword cSysFunc    sysconf
syn keyword cSysFunc    confstr
syn keyword cSysFunc    getpid
syn keyword cSysFunc    getppid
syn keyword cSysFunc    getpgrp
syn keyword cSysFunc    __REDIRECT_NTH
syn keyword cSysFunc    __getpgid
syn keyword cSysFunc    getpgid
syn keyword cSysFunc    setpgid
syn keyword cSysFunc    setpgrp
syn keyword cSysFunc    __REDIRECT_NTH
syn keyword cSysFunc    setsid
syn keyword cSysFunc    getsid
syn keyword cSysFunc    getuid
syn keyword cSysFunc    geteuid
syn keyword cSysFunc    getgid
syn keyword cSysFunc    getegid
syn keyword cSysFunc    getgroups
syn keyword cSysFunc    group_member
syn keyword cSysFunc    setuid
syn keyword cSysFunc    setreuid
syn keyword cSysFunc    seteuid
syn keyword cSysFunc    setgid
syn keyword cSysFunc    setregid
syn keyword cSysFunc    setegid
syn keyword cSysFunc    getresuid
syn keyword cSysFunc    getresgid
syn keyword cSysFunc    setresuid
syn keyword cSysFunc    setresgid
syn keyword cSysFunc    fork
syn keyword cSysFunc    vfork
syn keyword cSysFunc    ttyname
syn keyword cSysFunc    ttyname_r
syn keyword cSysFunc    isatty
syn keyword cSysFunc    ttyslot
syn keyword cSysFunc    link
syn keyword cSysFunc    linkat
syn keyword cSysFunc    symlink
syn keyword cSysFunc    readlink
syn keyword cSysFunc    symlinkat
syn keyword cSysFunc    readlinkat
syn keyword cSysFunc    unlink
syn keyword cSysFunc    unlinkat
syn keyword cSysFunc    rmdir
syn keyword cSysFunc    tcgetpgrp
syn keyword cSysFunc    tcsetpgrp
syn keyword cSysFunc    getlogin
syn keyword cSysFunc    getlogin_r
syn keyword cSysFunc    setlogin
syn keyword cSysFunc    gethostname
syn keyword cSysFunc    sethostname
syn keyword cSysFunc    sethostid
syn keyword cSysFunc    getdomainname
syn keyword cSysFunc    setdomainname
syn keyword cSysFunc    vhangup
syn keyword cSysFunc    revoke
syn keyword cSysFunc    profil
syn keyword cSysFunc    acct
syn keyword cSysFunc    getusershell
syn keyword cSysFunc    endusershell
syn keyword cSysFunc    setusershell
syn keyword cSysFunc    daemon
syn keyword cSysFunc    chroot
syn keyword cSysFunc    getpass
syn keyword cSysFunc    fsync
syn keyword cSysFunc    gethostid
syn keyword cSysFunc    sync
syn keyword cSysFunc    getpagesize
syn keyword cSysFunc    getdtablesize
syn keyword cSysFunc    truncate
syn keyword cSysFunc    __REDIRECT_NTH
syn keyword cSysFunc    truncate64
syn keyword cSysFunc    ftruncate
syn keyword cSysFunc    __REDIRECT_NTH
syn keyword cSysFunc    ftruncate64
syn keyword cSysFunc    brk
syn keyword cSysFunc    sbrk
syn keyword cSysFunc    syscall
syn keyword cSysFunc    lockf
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    lockf64
syn keyword cSysFunc    fdatasync
syn keyword cSysFunc    crypt
syn keyword cSysFunc    encrypt
syn keyword cSysFunc    swab
syn keyword cSysFunc    ctermid
syn keyword cSysFunc    remove
syn keyword cSysFunc    rename
syn keyword cSysFunc    renameat
syn keyword cSysFunc    tmpfile
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    tmpfile64
syn keyword cSysFunc    tmpnam
syn keyword cSysFunc    tmpnam_r
syn keyword cSysFunc    tempnam
syn keyword cSysFunc    fclose
syn keyword cSysFunc    fflush
syn keyword cSysFunc    fflush_unlocked
syn keyword cSysFunc    fcloseall
syn keyword cSysFunc    fopen
syn keyword cSysFunc    freopen
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    fopen64
syn keyword cSysFunc    freopen64
syn keyword cSysFunc    fdopen
syn keyword cSysFunc    fopencookie
syn keyword cSysFunc    fmemopen
syn keyword cSysFunc    open_memstream
syn keyword cSysFunc    setbuf
syn keyword cSysFunc    setvbuf
syn keyword cSysFunc    setbuffer
syn keyword cSysFunc    setlinebuf
syn keyword cSysFunc    fprintf
syn keyword cSysFunc    printf
syn keyword cSysFunc    sprintf
syn keyword cSysFunc    vfprintf
syn keyword cSysFunc    vprintf
syn keyword cSysFunc    vsprintf
syn keyword cSysFunc    snprintf
syn keyword cSysFunc    vsnprintf
syn keyword cSysFunc    vasprintf
syn keyword cSysFunc    __asprintf
syn keyword cSysFunc    asprintf
syn keyword cSysFunc    vdprintf
syn keyword cSysFunc    dprintf
syn keyword cSysFunc    fscanf
syn keyword cSysFunc    scanf
syn keyword cSysFunc    sscanf
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    __isoc99_fscanf
syn keyword cSysFunc    __isoc99_scanf
syn keyword cSysFunc    __isoc99_sscanf
syn keyword cSysFunc    vfscanf
syn keyword cSysFunc    vscanf
syn keyword cSysFunc    vsscanf
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    __isoc99_vfscanf
syn keyword cSysFunc    __isoc99_vscanf
syn keyword cSysFunc    __isoc99_vsscanf
syn keyword cSysFunc    fgetc
syn keyword cSysFunc    getc
syn keyword cSysFunc    getchar
syn keyword cSysFunc    getc_unlocked
syn keyword cSysFunc    getchar_unlocked
syn keyword cSysFunc    fgetc_unlocked
syn keyword cSysFunc    fputc
syn keyword cSysFunc    putc
syn keyword cSysFunc    putchar
syn keyword cSysFunc    fputc_unlocked
syn keyword cSysFunc    putc_unlocked
syn keyword cSysFunc    putchar_unlocked
syn keyword cSysFunc    getw
syn keyword cSysFunc    putw
syn keyword cSysFunc    fgets
syn keyword cSysFunc    gets
syn keyword cSysFunc    fgets_unlocked
syn keyword cSysFunc    __getdelim
syn keyword cSysFunc    getdelim
syn keyword cSysFunc    getline
syn keyword cSysFunc    fputs
syn keyword cSysFunc    puts
syn keyword cSysFunc    ungetc
syn keyword cSysFunc    fread
syn keyword cSysFunc    fwrite
syn keyword cSysFunc    fputs_unlocked
syn keyword cSysFunc    fread_unlocked
syn keyword cSysFunc    fwrite_unlocked
syn keyword cSysFunc    fseek
syn keyword cSysFunc    ftell
syn keyword cSysFunc    rewind
syn keyword cSysFunc    fseeko
syn keyword cSysFunc    ftello
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    fgetpos
syn keyword cSysFunc    fsetpos
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    __REDIRECT
syn keyword cSysFunc    fseeko64
syn keyword cSysFunc    ftello64
syn keyword cSysFunc    fgetpos64
syn keyword cSysFunc    fsetpos64
syn keyword cSysFunc    clearerr
syn keyword cSysFunc    feof
syn keyword cSysFunc    ferror
syn keyword cSysFunc    clearerr_unlocked
syn keyword cSysFunc    feof_unlocked
syn keyword cSysFunc    ferror_unlocked
syn keyword cSysFunc    perror
syn keyword cSysFunc    fileno
syn keyword cSysFunc    fileno_unlocked
syn keyword cSysFunc    popen
syn keyword cSysFunc    pclose
syn keyword cSysFunc    ctermid
syn keyword cSysFunc    cuserid
syn keyword cSysFunc    obstack_printf
syn keyword cSysFunc    obstack_vprintf
syn keyword cSysFunc    flockfile
syn keyword cSysFunc    ftrylockfile
syn keyword cSysFunc    funlockfile

" My keywords
syn keyword cContract assert
syn match cNumber display contained "0b\(1\|0\)\+\>"

hi def link cSysFunc    cSpecial
hi def link cContract   cContracts
hi cContracts ctermfg=Yellow

"--------------------------------------------------------------------
"  if u uncomment this line,
"  u ought to comment the "finish" 
"  in .../share/vim/vim72/syntax/c.vim:
"
"  if exists("b:current_syntax")
"   finish
"  endif
"--------------------------------------------------------------------
"
