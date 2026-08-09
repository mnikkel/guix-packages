;;; Crate sources for broot. Managed by ‘guix import’.
(define-module (broot-crates)
  #:use-module (guix gexp)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix build-system cargo)
  #:export (lookup-cargo-inputs))

(define qqqq-separator 'begin-of-crates)

(define rust-adler2-2.0.1
  (crate-source "adler2" "2.0.1"
                "1ymy18s9hs7ya1pjc9864l30wk8p2qfqdi7mhhcc5nfakxbij09j"))

(define rust-ahash-0.8.12
  (crate-source "ahash" "0.8.12"
                "0xbsp9rlm5ki017c0w6ay8kjwinwm8knjncci95mii30rmwz25as"))

(define rust-aho-corasick-1.1.4
  (crate-source "aho-corasick" "1.1.4"
                "00a32wb2h07im3skkikc495jvncf62jl6s96vwc7bhi70h9imlyx"))

(define rust-aligned-vec-0.6.4
  (crate-source "aligned-vec" "0.6.4"
                "16vnf78hvfix5cwzd5xs5a2g6afmgb4h7n6yfsc36bv0r22072fw"))

(define rust-allocator-api2-0.2.21
  (crate-source "allocator-api2" "0.2.21"
                "08zrzs022xwndihvzdn78yqarv2b9696y67i6h78nla3ww87jgb8"))

(define rust-android-system-properties-0.1.5
  (crate-source "android_system_properties" "0.1.5"
                "04b3wrz12837j7mdczqd95b732gw5q7q66cv4yn4646lvccp57l1"))

(define rust-anstream-1.0.0
  (crate-source "anstream" "1.0.0"
                "13d2bj0xfg012s4rmq44zc8zgy1q8k9yp7yhvfnarscnmwpj2jl2"))

(define rust-anstyle-1.0.14
  (crate-source "anstyle" "1.0.14"
                "0030szmgj51fxkic1hpakxxgappxzwm6m154a3gfml83lq63l2wl"))

(define rust-anstyle-parse-1.0.0
  (crate-source "anstyle-parse" "1.0.0"
                "03hkv2690s0crssbnmfkr76kw1k7ah2i6s5amdy9yca2n8w7zkjj"))

(define rust-anstyle-query-1.1.5
  (crate-source "anstyle-query" "1.1.5"
                "1p6shfpnbghs6jsa0vnqd8bb8gd7pjd0jr7w0j8jikakzmr8zi20"))

(define rust-anstyle-wincon-3.0.11
  (crate-source "anstyle-wincon" "3.0.11"
                "0zblannm70sk3xny337mz7c6d8q8i24vhbqi42ld8v7q1wjnl7i9"))

(define rust-anyhow-1.0.103
  (crate-source "anyhow" "1.0.103"
                "1wsav2g6vxcvf2c0fv3jhxfr55l0p2g8nygy7rmmvcsfwgi8ahra"))

(define rust-arbitrary-1.4.2
  (crate-source "arbitrary" "1.4.2"
                "1wcbi4x7i3lzcrkjda4810nqv03lpmvfhb0a85xrq1mbqjikdl63"))

(define rust-arg-enum-proc-macro-0.3.4
  (crate-source "arg_enum_proc_macro" "0.3.4"
                "1sjdfd5a8j6r99cf0bpqrd6b160x9vz97y5rysycsjda358jms8a"))

(define rust-argh-0.1.19
  (crate-source "argh" "0.1.19"
                "0cyhdi44qc61ciy1a1yqvyk6cww3134aar3s2rpwmafd43l1h611"))

(define rust-argh-derive-0.1.19
  (crate-source "argh_derive" "0.1.19"
                "0za2xi4nfnr6102gs3bd5nbnh3883m37vlh5fi3dwpggik8sjhn4"))

(define rust-argh-shared-0.1.19
  (crate-source "argh_shared" "0.1.19"
                "1w8ilkajhz080741djldhqjp0hn62262q4x02y2jgny4p89f1bg5"))

(define rust-arrayref-0.3.9
  (crate-source "arrayref" "0.3.9"
                "1jzyp0nvp10dmahaq9a2rnxqdd5wxgbvp8xaibps3zai8c9fi8kn"))

(define rust-arrayvec-0.7.8
  (crate-source "arrayvec" "0.7.8"
                "0mmd8lrijbvg1qp4c5zis5dq41a3mjv2rb6bxkyj9kwaw2k6gyyk"))

(define rust-autocfg-1.5.1
  (crate-source "autocfg" "1.5.1"
                "0lqasy5i30flcgih1b50kvsk6z32g09r1q4ql7q81pj6228jy0zj"))

(define rust-av1-grain-0.2.5
  (crate-source "av1-grain" "0.2.5"
                "1y3p43i5xncbny0pfh8kw09am3l3mgyg82ln65r3f434443xpzcc"))

(define rust-avif-serialize-0.8.9
  (crate-source "avif-serialize" "0.8.9"
                "0f3z55fma6xmdj0a0x15vz91cqisiardrfgbjlwb2q6lyzjqy5z7"))

(define rust-base64-0.13.1
  (crate-source "base64" "0.13.1"
                "1s494mqmzjb766fy1kqlccgfg2sdcjb6hzbvzqv2jw65fdi5h6wy"))

(define rust-base64-0.22.1
  (crate-source "base64" "0.22.1"
                "1imqzgh7bxcikp5vx3shqvw9j09g9ly0xr0jma0q66i52r7jbcvj"))

(define rust-bet-1.1.0
  (crate-source "bet" "1.1.0"
                "01ch1ks2dwv0pxpw58m47pk4zil5c58khr4y9zjjh648bzj60s53"))

(define rust-bincode-1.3.3
  (crate-source "bincode" "1.3.3"
                "1bfw3mnwzx5g1465kiqllp5n4r10qrqy88kdlp3jfwnq2ya5xx5i"))

(define rust-bit-field-0.10.3
  (crate-source "bit_field" "0.10.3"
                "1ikhbph4ap4w692c33r8bbv6yd2qxm1q3f64845grp1s6b3l0jqy"))

(define rust-bit-set-0.5.3
  (crate-source "bit-set" "0.5.3"
                "1wcm9vxi00ma4rcxkl3pzzjli6ihrpn9cfdi0c5b4cvga2mxs007"))

(define rust-bit-vec-0.6.3
  (crate-source "bit-vec" "0.6.3"
                "1ywqjnv60cdh1slhz67psnp422md6jdliji6alq0gmly2xm9p7rl"))

(define rust-bitflags-1.3.2
  (crate-source "bitflags" "1.3.2"
                "12ki6w8gn1ldq7yz9y680llwk5gmrhrzszaa17g1sbrw2r2qvwxy"))

(define rust-bitflags-2.13.0
  (crate-source "bitflags" "2.13.0"
                "1y239gpvl061rfvav7jds8mjs42kmwi39is7yx5d1qw3hvp8nf5l"))

(define rust-bitstream-io-2.6.0
  (crate-source "bitstream-io" "2.6.0"
                "1cli390l1dhp9skygyjjnqvczp36b7f31mkx9ry3dg26330cv6b0"))

(define rust-block2-0.5.1
  (crate-source "block2" "0.5.1"
                "0pyiha5his2grzqr3mynmq244laql2j20992i59asp0gy7mjw4rc"))

(define rust-bstr-1.12.3
  (crate-source "bstr" "1.12.3"
                "0yabxnlgd95makz44czlpnfj847hq6k20qv0pca31aj473vkbvjw"))

(define rust-built-0.7.7
  (crate-source "built" "0.7.7"
                "0ywn0m11xm80pg6zrzq3sdj3vmzg3qs6baqnvfmkd377ly8n3van"))

(define rust-bumpalo-3.20.3
  (crate-source "bumpalo" "3.20.3"
                "0jc6va3nwcqikm7chnpdv1s87my3gs2j7g1sc7g3k91brg3arxbj"))

(define rust-bytemuck-1.25.0
  (crate-source "bytemuck" "1.25.0"
                "1v1z32igg9zq49phb3fra0ax5r2inf3aw473vldnm886sx5vdvy8"))

(define rust-byteorder-lite-0.1.0
  (crate-source "byteorder-lite" "0.1.0"
                "15alafmz4b9az56z6x7glcbcb6a8bfgyd109qc3bvx07zx4fj7wg"))

(define rust-cc-1.2.66
  (crate-source "cc" "1.2.66"
                "15nr9bpbcinb9z7zvr1d70xyivv8969v490001qdjywrjg3wmmpm"))

(define rust-cfg-aliases-0.2.1
  (crate-source "cfg_aliases" "0.2.1"
                "092pxdc1dbgjb6qvh83gk56rkic2n2ybm4yvy76cgynmzi3zwfk1"))

(define rust-cfg-expr-0.15.8
  (crate-source "cfg-expr" "0.15.8"
                "00lgf717pmf5qd2qsxxzs815v6baqg38d6m5i6wlh235p14asryh"))

(define rust-cfg-if-1.0.4
  (crate-source "cfg-if" "1.0.4"
                "008q28ajc546z5p2hcwdnckmg0hia7rnx52fni04bwqkzyrghc4k"))

(define rust-char-reader-0.1.1
  (crate-source "char_reader" "0.1.1"
                "0fpdhx6061a92fj3kw11rwv2zkdlx8z59gbkq7baf762vqi9p99p"))

(define rust-chrono-0.4.45
  (crate-source "chrono" "0.4.45"
                "09rkcgk6is2sdhqs9142zv8xqnj8ryx8m9hknllqwyv9wxi9x9qs"))

(define rust-clap-4.6.1
  (crate-source "clap" "4.6.1"
                "0lcf88l7vlg796rrqr7wipbbmfa5sgsgx4211b7xmxxv8dz13nqx"))

(define rust-clap-builder-4.6.0
  (crate-source "clap_builder" "4.6.0"
                "17q6np22yxhh5y5v53y4l31ps3hlaz45mvz2n2nicr7n3c056jki"))

(define rust-clap-complete-4.6.7
  (crate-source "clap_complete" "4.6.7"
                "0yq2xmvm93l4lbaf3xnacy1rph5zwjlwlvrxzxhh2pqq31wkk2yv"))

(define rust-clap-derive-4.6.1
  (crate-source "clap_derive" "4.6.1"
                "1acpz49hi00iv9jkapixjzcv7s51x8qkfaqscjm36rqgf428dkpj"))

(define rust-clap-help-1.6.0
  (crate-source "clap-help" "1.6.0"
                "127jlajrd665lq4lz9l8699szjfvgjzzsa16nml0yikab2sax8nb"))

(define rust-clap-lex-1.1.0
  (crate-source "clap_lex" "1.1.0"
                "1ycqkpygnlqnndghhcxjb44lzl0nmgsia64x9581030yifxs7m68"))

(define rust-clap-mangen-0.2.33
  (crate-source "clap_mangen" "0.2.33"
                "0y1d3wccspkd48cs9jhc9i2kk5z22sj2lvhwrnpsxqz2hz0zyc3y"))

(define rust-cli-log-2.1.0
  (crate-source "cli-log" "2.1.0"
                "0ip0lir1dc5g0706isx48zhqq4034kjygy2ll1rx8p1rwm3al872"))

(define rust-clipboard-macos-0.1.1
  (crate-source "clipboard_macos" "0.1.1"
                "13zkbmnsl2c98452kvia7vr2ywwl123bj2q81diw78vv0jm4lzwv"))

(define rust-clipboard-win-4.5.0
  (crate-source "clipboard-win" "4.5.0"
                "0qh3rypkf1lazniq4nr04hxsck0d55rigb5sjvpvgnap4dyc54bi"))

(define rust-color-quant-1.1.0
  (crate-source "color_quant" "1.1.0"
                "12q1n427h2bbmmm1mnglr57jaz2dj9apk0plcxw7nwqiai7qjyrx"))

(define rust-colorchoice-1.0.5
  (crate-source "colorchoice" "1.0.5"
                "0w75k89hw39p0mnnhlrwr23q50rza1yjki44qvh2mgrnj065a1qx"))

(define rust-convert-case-0.10.0
  (crate-source "convert_case" "0.10.0"
                "1fff1x78mp2c233g68my0ag0zrmjdbym8bfyahjbfy4cxza5hd33"))

(define rust-coolor-1.1.0
  (crate-source "coolor" "1.1.0"
                "1wr7q2c8l1cmigw3h7yfdpwcz5g5xbwkirsvbjhdchxgwkyjl34q"))

(define rust-core-foundation-0.9.4
  (crate-source "core-foundation" "0.9.4"
                "13zvbbj07yk3b61b8fhwfzhy35535a583irf23vlcg59j7h9bqci"))

(define rust-core-foundation-sys-0.8.7
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "core-foundation-sys" "0.8.7"
                "12w8j73lazxmr1z0h98hf3z623kl8ms7g07jch7n4p8f9nwlhdkp"))

(define rust-core-maths-0.1.1
  (crate-source "core_maths" "0.1.1"
                "0c0dv11ixxpc9bsx5xasvl98mb1dlprzcm6qq6ls3nsygw0mwx3p"))

(define rust-crc32fast-1.5.0
  (crate-source "crc32fast" "1.5.0"
                "04d51liy8rbssra92p0qnwjw8i9rm9c4m3bwy19wjamz1k4w30cl"))

(define rust-crokey-1.4.0
  (crate-source "crokey" "1.4.0"
                "0z2bhmk3vf6fvhvy8dnb697mvynl7sxcv5xbfif56s510spkv9h4"))

(define rust-crokey-proc-macros-1.4.0
  (crate-source "crokey-proc_macros" "1.4.0"
                "0cdjjdyffz7dvpikxdy2ngp7fgn5jlc84nfhsl5lkz2m92hi2zw4"))

(define rust-crossbeam-0.8.4
  (crate-source "crossbeam" "0.8.4"
                "1a5c7yacnk723x0hfycdbl91ks2nxhwbwy46b8y5vyy0gxzcsdqi"))

(define rust-crossbeam-channel-0.5.16
  (crate-source "crossbeam-channel" "0.5.16"
                "17k72dh5qqkh0xvqzr27wny7gl1l7fgzlvh2xxx71jmfgz1n6lyq"))

(define rust-crossbeam-deque-0.8.7
  (crate-source "crossbeam-deque" "0.8.7"
                "1sqcxia1mmz2fw8ba1v72jjrvbkvg7c6sz9l3sl07sv1gggf10ai"))

(define rust-crossbeam-epoch-0.9.20
  (crate-source "crossbeam-epoch" "0.9.20"
                "0gzg0v8in20iajikalg5i5qgpp0m26r426f0fs8nwk953w218s9d"))

(define rust-crossbeam-queue-0.3.13
  (crate-source "crossbeam-queue" "0.3.13"
                "09ksdjzqk1iadmsfnz46f1qvy6bbqri91hnvyklqpn097gxi6gc0"))

(define rust-crossbeam-utils-0.8.22
  (crate-source "crossbeam-utils" "0.8.22"
                "05vwf7pmjq8c8f3fp5qqdm0z3cnk4p62wi8spf0jms5yjnh3v031"))

(define rust-crossterm-0.28.1
  (crate-source "crossterm" "0.28.1"
                "1im9vs6fvkql0sr378dfr4wdm1rrkrvr22v4i8byz05k1dd9b7c2"))

(define rust-crossterm-0.29.0
  (crate-source "crossterm" "0.29.0"
                "0yzqxxd90k7d2ac26xq1awsznsaq0qika2nv1ik3p0vzqvjg5ffq"))

(define rust-crossterm-winapi-0.9.1
  (crate-source "crossterm_winapi" "0.9.1"
                "0axbfb2ykbwbpf1hmxwpawwfs8wvmkcka5m561l7yp36ldi7rpdc"))

(define rust-crunchy-0.2.4
  (crate-source "crunchy" "0.2.4"
                "1mbp5navim2qr3x48lyvadqblcxc1dm0lqr0swrkkwy2qblvw3s6"))

(define rust-csv-1.4.0
  (crate-source "csv" "1.4.0"
                "0f7r2ip0rbi7k377c3xmsh9xd69sillffhpfmbgnvz3yrxl9vkaj"))

(define rust-csv-core-0.1.13
  (crate-source "csv-core" "0.1.13"
                "10lppd3fdb1i5npgx9xqjs5mjmy2qbdi8n16i48lg03ak4k3qjkh"))

(define rust-csv2svg-0.2.3
  (crate-source "csv2svg" "0.2.3"
                "0wf1ybnnrp85gnygbgi5s5inzm9yyzrc284nivxwhw4mrzgadhhw"))

(define rust-custom-error-1.9.2
  (crate-source "custom_error" "1.9.2"
                "19mwa90z1hgwn3mqj07b4cy6j4yc8c59k2n99mdvm9kz37fm32jg"))

(define rust-data-url-0.3.2
  (crate-source "data-url" "0.3.2"
                "0xl30jidc8s3kh2z3nvnn1nyzhbq5b2wpiqwzj9gjdrndk50n7my"))

(define rust-deranged-0.5.8
  (crate-source "deranged" "0.5.8"
                "0711df3w16vx80k55ivkwzwswziinj4dz05xci3rvmn15g615n3w"))

(define rust-derive-more-2.1.1
  (crate-source "derive_more" "2.1.1"
                "0d5i10l4aff744jw7v4n8g6cv15rjk5mp0f1z522pc2nj7jfjlfp"))

(define rust-derive-more-impl-2.1.1
  (crate-source "derive_more-impl" "2.1.1"
                "1jwdp836vymp35d7mfvvalplkdgk2683nv3zjlx65n1194k9g6kr"))

(define rust-deser-hjson-2.2.6
  (crate-source "deser-hjson" "2.2.6"
                "0xk5iqfkrq2480799ijsmfag10za83sj5641llfdr4nx7s99mm50"))

(define rust-directories-4.0.1
  (crate-source "directories" "4.0.1"
                "045jbj5y2f1fmjs9rfcw95y0vjydb2rqqhz1sdnqhdmxv96ms77m"))

(define rust-directories-5.0.1
  (crate-source "directories" "5.0.1"
                "0dba6xzk79s1clqzxh2qlgzk3lmvvks1lzzjhhi3hd70hhxifjcs"))

(define rust-dirs-sys-0.3.7
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "dirs-sys" "0.3.7"
                "19md1cnkazham8a6kh22v12d8hh3raqahfk6yb043vrjr68is78v"))

(define rust-dirs-sys-0.4.1
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "dirs-sys" "0.4.1"
                "071jy0pvaad9lsa6mzawxrh7cmr7hsmsdxwzm7jzldfkrfjha3sj"))

(define rust-displaydoc-0.2.6
  (crate-source "displaydoc" "0.2.6"
                "0kyxwfbdmagd8afzb2pzja7wj8dhah7smxdsgw00iq8pa2jhmiqs"))

(define rust-doc-comment-0.3.4
  (crate-source "doc-comment" "0.3.4"
                "1j8jbrw8335hciwn3h2idkfc3kmx3pfn0sxcwjw1m8lmn6w5a2bq"))

(define rust-document-features-0.2.12
  (crate-source "document-features" "0.2.12"
                "0qcgpialq3zgvjmsvar9n6v10rfbv6mk6ajl46dd4pj5hn3aif6l"))

(define rust-either-1.16.0
  (crate-source "either" "1.16.0"
                "17k7jfbdz7k440h6lws9baz8p9zlxgb41sig3w81h80nwzsjyqli"))

(define rust-equator-0.4.2
  (crate-source "equator" "0.4.2"
                "1z760z5r0haxjyakbqxvswrz9mq7c29arrivgq8y1zldhc9v44a7"))

(define rust-equator-macro-0.4.2
  (crate-source "equator-macro" "0.4.2"
                "1cqzx3cqn9rxln3a607xr54wippzff56zs5chqdf3z2bnks3rwj4"))

(define rust-equivalent-1.0.2
  (crate-source "equivalent" "1.0.2"
                "03swzqznragy8n0x31lqc78g2af054jwivp7lkrbrc0khz74lyl7"))

(define rust-errno-0.3.14
  (crate-source "errno" "0.3.14"
                "1szgccmh8vgryqyadg8xd58mnwwicf39zmin3bsn63df2wbbgjir"))

(define rust-error-code-2.3.1
  (crate-source "error-code" "2.3.1"
                "08baxlf8qz01lgjsdbfhs193r9y1nlc566s5xvzyf4dzwy8qkwb4"))

(define rust-euclid-0.22.14
  (crate-source "euclid" "0.22.14"
                "01ksjl4vb8ms89laswnjpld3z4n6c1s7qlqq0djx3imiwdjm787i"))

(define rust-exr-1.74.1
  (crate-source "exr" "1.74.1"
                "19fsnd4m599fsns9b0ixamrcn7v1wkcfv55kk8rs8c02y4r7ks3b"))

(define rust-fallible-iterator-0.3.0
  (crate-source "fallible-iterator" "0.3.0"
                "0ja6l56yka5vn4y4pk6hn88z0bpny7a8k1919aqjzp0j1yhy9k1a"))

(define rust-fallible-streaming-iterator-0.1.9
  (crate-source "fallible-streaming-iterator" "0.1.9"
                "0nj6j26p71bjy8h42x6jahx1hn0ng6mc2miwpgwnp8vnwqf4jq3k"))

(define rust-fancy-regex-0.11.0
  (crate-source "fancy-regex" "0.11.0"
                "18j0mmzfycibhxhhhfja00dxd1vf8x5c28lbry224574h037qpxr"))

(define rust-fastrand-2.4.1
  (crate-source "fastrand" "2.4.1"
                "1mnqxxnxvd69ma9mczabpbbsgwlhd6l78yv3vd681453a9s247wz"))

(define rust-fdeflate-0.3.7
  (crate-source "fdeflate" "0.3.7"
                "130ga18vyxbb5idbgi07njymdaavvk6j08yh1dfarm294ssm6s0y"))

(define rust-file-size-1.0.3
  (crate-source "file-size" "1.0.3"
                "1cyj7067fs7ml8pjrwzjy3qrns3yxaxakf0na1v5fffk0l0z2i4m"))

(define rust-find-msvc-tools-0.1.9
  (crate-source "find-msvc-tools" "0.1.9"
                "10nmi0qdskq6l7zwxw5g56xny7hb624iki1c39d907qmfh3vrbjv"))

(define rust-flate2-1.1.9
  (crate-source "flate2" "1.1.9"
                "0g2pb7cxnzcbzrj8bw4v6gpqqp21aycmf6d84rzb6j748qkvlgw4"))

(define rust-flex-grow-0.1.0
  (crate-source "flex-grow" "0.1.0"
                "0y7bm1bqa6cxwrj1w2l9ja9qcpaafmbgx28ildpnhq8mn0dsw16m"))

(define rust-float-cmp-0.9.0
  (crate-source "float-cmp" "0.9.0"
                "1i799ksbq7fj9rm9m82g1yqgm6xi3jnrmylddmqknmksajylpplq"))

(define rust-fnv-1.0.7
  (crate-source "fnv" "1.0.7"
                "1hc2mcqha06aibcaza94vbi81j6pr9a1bbxrxjfhc91zin8yr7iz"))

(define rust-foldhash-0.2.0
  (crate-source "foldhash" "0.2.0"
                "1nvgylb099s11xpfm1kn2wcsql080nqmnhj1l25bp3r2b35j9kkp"))

(define rust-fontconfig-parser-0.5.8
  (crate-source "fontconfig-parser" "0.5.8"
                "0ijnbzg31sl6v49g7q2l7sl76hjj8z0hvlsz77cdvm029vi77ixv"))

(define rust-fontdb-0.23.0
  (crate-source "fontdb" "0.23.0"
                "0199vry9x8zn9ix4x4rqvv53dy2ryhy68l53jwr580hj7ndphzj5"))

(define rust-form-urlencoded-1.2.2
  (crate-source "form_urlencoded" "1.2.2"
                "1kqzb2qn608rxl3dws04zahcklpplkd5r1vpabwga5l50d2v4k6b"))

(define rust-fsevent-sys-4.1.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "fsevent-sys" "4.1.0"
                "1liz67v8b0gcs8r31vxkvm2jzgl9p14i78yfqx81c8sdv817mvkn"))

(define rust-futures-core-0.3.32
  (crate-source "futures-core" "0.3.32"
                "07bbvwjbm5g2i330nyr1kcvjapkmdqzl4r6mqv75ivvjaa0m0d3y"))

(define rust-futures-task-0.3.32
  (crate-source "futures-task" "0.3.32"
                "14s3vqf8llz3kjza33vn4ixg6kwxp61xrysn716h0cwwsnri2xq3"))

(define rust-futures-util-0.3.32
  (crate-source "futures-util" "0.3.32"
                "1mn60lw5kh32hz9isinjlpw34zx708fk5q1x0m40n6g6jq9a971q"))

(define rust-gethostname-0.3.0
  (crate-source "gethostname" "0.3.0"
                "0xy1wbx5k2bzi4cbaqj9wqgqsbn4f8pm6nsm1d86mibk66xd8rdv"))

(define rust-getrandom-0.2.17
  (crate-source "getrandom" "0.2.17"
                "1l2ac6jfj9xhpjjgmcx6s1x89bbnw9x6j9258yy6xjkzpq0bqapz"))

(define rust-getrandom-0.4.3
  (crate-source "getrandom" "0.4.3"
                "16b0202fkdwz3p2cyll82dv24ljbn0wiyy829v4lwbkbflyqh3ih"))

(define rust-gif-0.13.3
  (crate-source "gif" "0.13.3"
                "06z6gll24q7psbz9fb86jbcbmgwnxkym8jsp0fbq5qikbqilgq2a"))

(define rust-git2-0.20.4
  (crate-source "git2" "0.20.4"
                "0azykjpk3j6s354z23jkyq3r3pbmlw9ha1zsxkw5cnnpi1h2b23v"))

(define rust-glassbench-0.4.4
  (crate-source "glassbench" "0.4.4"
                "0459fsmfhdvg2z1085a6gnydl1y8s3xanrr9l3vqqd0s51q7hqsa"))

(define rust-glob-0.3.3
  (crate-source "glob" "0.3.3"
                "106jpd3syfzjfj2k70mwm0v436qbx96wig98m4q8x071yrq35hhc"))

(define rust-half-2.7.1
  (crate-source "half" "2.7.1"
                "0jyq42xfa6sghc397mx84av7fayd4xfxr4jahsqv90lmjr5xi8kf"))

(define rust-hashbrown-0.14.5
  (crate-source "hashbrown" "0.14.5"
                "1wa1vy1xs3mp11bn3z9dv0jricgr6a2j0zkf1g19yz3vw4il89z5"))

(define rust-hashbrown-0.16.1
  (crate-source "hashbrown" "0.16.1"
                "004i3njw38ji3bzdp9z178ba9x3k0c1pgy8x69pj7yfppv4iq7c4"))

(define rust-hashbrown-0.17.1
  (crate-source "hashbrown" "0.17.1"
                "0jmqz7i4yl6cm7rbn0i2ffkfrmwi6xkmzkaldr2v8bcsx2v0jngd"))

(define rust-hashlink-0.9.1
  (crate-source "hashlink" "0.9.1"
                "1byq4nyrflm5s6wdx5qwp96l1qbp2d0nljvrr5yqrsfy51qzz93b"))

(define rust-heck-0.4.1
  (crate-source "heck" "0.4.1"
                "1a7mqsnycv5z4z5vnv1k34548jzmc0ajic7c1j8jsaspnhw5ql4m"))

(define rust-heck-0.5.0
  (crate-source "heck" "0.5.0"
                "1sjmpsdl8czyh9ywl3qcsfsq9a307dg4ni2vnlwgnzzqhc4y0113"))

(define rust-iana-time-zone-0.1.65
  (crate-source "iana-time-zone" "0.1.65"
                "0w64khw5p8s4nzwcf36bwnsmqzf61vpwk9ca1920x82bk6nwj6z3"))

(define rust-iana-time-zone-haiku-0.1.2
  (crate-source "iana-time-zone-haiku" "0.1.2"
                "17r6jmj31chn7xs9698r122mapq85mfnv98bb4pg6spm0si2f67k"))

(define rust-icu-collections-2.2.0
  (crate-source "icu_collections" "2.2.0"
                "070r7xd0pynm0hnc1v2jzlbxka6wf50f81wybf9xg0y82v6x3119"))

(define rust-icu-locale-core-2.2.0
  (crate-source "icu_locale_core" "2.2.0"
                "0a9cmin5w1x3bg941dlmgszn33qgq428k7qiqn5did72ndi9n8cj"))

(define rust-icu-normalizer-2.2.0
  (crate-source "icu_normalizer" "2.2.0"
                "1d7krxr0xpc4x9635k1100a24nh0nrc59n65j6yk6gbfkplmwvn5"))

(define rust-icu-normalizer-data-2.2.0
  (crate-source "icu_normalizer_data" "2.2.0"
                "0f5d5d5fhhr9937m2z6z38fzh6agf14z24kwlr6lyczafypf0fys"))

(define rust-icu-properties-2.2.0
  (crate-source "icu_properties" "2.2.0"
                "1pkh3s837808cbwxvfagwc28cvwrz2d9h5rl02jwrhm51ryvdqxy"))

(define rust-icu-properties-data-2.2.0
  (crate-source "icu_properties_data" "2.2.0"
                "052awny0qwkbcbpd5jg2cd7vl5ry26pq4hz1nfsgf10c3qhbnawf"))

(define rust-icu-provider-2.2.0
  (crate-source "icu_provider" "2.2.0"
                "08dl8pxbwr8zsz4c5vphqb7xw0hykkznwi4rw7bk6pwb3krlr70k"))

(define rust-id-arena-2.3.0
  (crate-source "id-arena" "2.3.0"
                "0m6rs0jcaj4mg33gkv98d71w3hridghp5c4yr928hplpkgbnfc1x"))

(define rust-idna-1.1.0
  (crate-source "idna" "1.1.0"
                "1pp4n7hppm480zcx411dsv9wfibai00wbpgnjj4qj0xa7kr7a21v"))

(define rust-idna-adapter-1.2.2
  (crate-source "idna_adapter" "1.2.2"
                "0557p76l8hj35r9zn1yv7c6x1c0qbrsffmg80n0yy8361ly3fs6b"))

(define rust-image-0.25.6
  (crate-source "image" "0.25.6"
                "06i522bq4qlwylwnlmcn0sgqg72swwan544aldbhi0drwr66cdfv"))

(define rust-image-webp-0.2.4
  (crate-source "image-webp" "0.2.4"
                "1hz814csyi9283vinzlkix6qpnd6hs3fkw7xl6z2zgm4w7rrypjj"))

(define rust-imagesize-0.13.0
  (crate-source "imagesize" "0.13.0"
                "11f26ac9zvbr7sjnsv2z9jd3ryaz40pg8xch4ij1q1rg5zbjgkgd"))

(define rust-imgref-1.12.2
  (crate-source "imgref" "1.12.2"
                "1msc8g8x8a9dy3l85ila4sijvnhr1rxrxsbjhqk1bawkm64lc6c9"))

(define rust-include-dir-0.7.4
  (crate-source "include_dir" "0.7.4"
                "1pfh3g45z88kwq93skng0n6g3r7zkhq9ldqs9y8rvr7i11s12gcj"))

(define rust-include-dir-macros-0.7.4
  (crate-source "include_dir_macros" "0.7.4"
                "0x8smnf6knd86g69p19z5lpfsaqp8w0nx14kdpkz1m8bxnkqbavw"))

(define rust-indexmap-2.14.0
  (crate-source "indexmap" "2.14.0"
                "1na9z6f0d5pkjr1lgsni470v98gv2r7c41j8w48skr089x2yjrnl"))

(define rust-inotify-0.11.4
  (crate-source "inotify" "0.11.4"
                "1j7jkacw6cxra4jf1sbndkpkbm5qm0bvxpcms36cjghq3aaf2fqm"))

(define rust-inotify-sys-0.1.8
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "inotify-sys" "0.1.8"
                "0zgkxmqa7wlsc348166rr9np4560rflzlcvsmf8xyg0i5h5zhcy0"))

(define rust-interpolate-name-0.2.4
  (crate-source "interpolate_name" "0.2.4"
                "0q7s5mrfkx4p56dl8q9zq71y1ysdj4shh6f28qf9gly35l21jj63"))

(define rust-io-kit-sys-0.4.1
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "io-kit-sys" "0.4.1"
                "0ysy5k3wf54yangy25hkj10xx332cj2hb937xasg6riziv7yczk1"))

(define rust-is-executable-1.0.6
  (crate-source "is_executable" "1.0.6"
                "1gdqraq6f5vbfdsk7r9s2g08z9fwp50wc2327g36iaaxcygnmjw2"))

(define rust-is-terminal-polyfill-1.70.2
  (crate-source "is_terminal_polyfill" "1.70.2"
                "15anlc47sbz0jfs9q8fhwf0h3vs2w4imc030shdnq54sny5i7jx6"))

(define rust-itertools-0.12.1
  (crate-source "itertools" "0.12.1"
                "0s95jbb3ndj1lvfxyq5wanc0fm0r6hg6q4ngb92qlfdxvci10ads"))

(define rust-itoa-1.0.18
  (crate-source "itoa" "1.0.18"
                "10jnd1vpfkb8kj38rlkn2a6k02afvj3qmw054dfpzagrpl6achlg"))

(define rust-jobserver-0.1.35
  (crate-source "jobserver" "0.1.35"
                "1crwgbb0wjph42ni4hqryjxlv4vlr0hyk81g76id9fpa56ysq00w"))

(define rust-jpeg-decoder-0.3.2
  (crate-source "jpeg-decoder" "0.3.2"
                "01qs04rnackrc5xhw7w9difn2h3pqsdbhgdz7nqn9gklicfhz080"))

(define rust-jpeg-encoder-0.5.1
  (crate-source "jpeg-encoder" "0.5.1"
                "01j9wslaqs0ragv3i5xkkjz2l8lbarspbv4h4scz3ngz4zzazwrc"))

(define rust-js-sys-0.3.103
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "js-sys" "0.3.103"
                "00lib0b6hqmw56r2hjp7xrv730qacslirbkdlhvmi39zvgy4pd2k"))

(define rust-jxl-bitstream-0.2.3
  (crate-source "jxl-bitstream" "0.2.3"
                "08k6dy6v5qwlaplc02vln2pzfvw8jbjndpllysrjjqng31fj1hvn"))

(define rust-jxl-coding-0.2.3
  (crate-source "jxl-coding" "0.2.3"
                "1d6h5ms7ffclrag48892zq0i9byjvsl3zg0zvpifj71cfq660xbh"))

(define rust-jxl-color-0.3.2
  (crate-source "jxl-color" "0.3.2"
                "0wvfiyqf0pmm189g6d83g3iz8mqslla7a63cvfqjc7nhnqrvr14h"))

(define rust-jxl-frame-0.5.0
  (crate-source "jxl-frame" "0.5.0"
                "1qa5bvkxsrzqlhb5z9n5r7ymjpda83wqdpi3l5lncx730k8vsqwd"))

(define rust-jxl-grid-0.1.1
  (crate-source "jxl-grid" "0.1.1"
                "1s2547v112wvljkxamqz44dgpg9h0pa9rbhqz31bpcvbxlhhp028"))

(define rust-jxl-image-0.5.0
  (crate-source "jxl-image" "0.5.0"
                "0ndyc28vppfrdg9dg8sy8l65mvyd007073acc1k9x76c9bvzg1pg"))

(define rust-jxl-modular-0.3.0
  (crate-source "jxl-modular" "0.3.0"
                "0j377r653p32zxlyfymndz2qcrzwfb3r66g85dcnh99nvdannkjh"))

(define rust-jxl-oxide-0.4.0
  (crate-source "jxl-oxide" "0.4.0"
                "0r30kcp0hfs4xab4bwrp8haxp08m757mijd09jf9f8yqb7jbgqsp"))

(define rust-jxl-render-0.4.0
  (crate-source "jxl-render" "0.4.0"
                "0zkhr03nckj8d6gg6lgwkamifx5s8njqpk5h1j0dqvc9qk3d2mvi"))

(define rust-jxl-vardct-0.3.0
  (crate-source "jxl-vardct" "0.3.0"
                "0gh52l6na3yn9kwajfdrr44i6zf6m8w1r81v2kv552n4m2djsjpb"))

(define rust-kamadak-exif-0.5.5
  (crate-source "kamadak-exif" "0.5.5"
                "0xw0lpmra8j1y98c0agwrmjajpkh91mnl89hzaxbdrdp186wfkzg"))

(define rust-kqueue-1.2.0
  (crate-source "kqueue" "1.2.0"
                "1dc7rm23i7s1574xx185836rxyzynrsv5wkn96nf0649f990fg17"))

(define rust-kqueue-sys-1.1.2
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "kqueue-sys" "1.1.2"
                "11xhzsgwc82g85072c6m8nimxxqkax4n40sikcsk9hks5573la87"))

(define rust-kurbo-0.11.3
  (crate-source "kurbo" "0.11.3"
                "0qiwq4l83fy9v5d1piywvh44yg9ha3rl04d2kdcqlvvm8jp2c866"))

(define rust-lazy-regex-3.6.0
  (crate-source "lazy-regex" "3.6.0"
                "15hlmhjh7abkvb91ac1gpw58fvfvra8s56ny8xqyrlvnjh0r3bkb"))

(define rust-lazy-regex-proc-macros-3.6.0
  (crate-source "lazy-regex-proc_macros" "3.6.0"
                "0n23v742vgza04y9lgbk84ra6z24ky00klmjc4q7p2wx8ghw3sad"))

(define rust-lazy-static-1.5.0
  (crate-source "lazy_static" "1.5.0"
                "1zk6dqqni0193xg6iijh7i3i44sryglwgvx20spdvwk3r6sbrlmv"))

(define rust-lebe-0.5.3
  (crate-source "lebe" "0.5.3"
                "1f459clndzzm35nyd15vj5dlasyagfasp7hcgl6lh2b658rs6ybs"))

(define rust-lfs-core-0.17.0
  (crate-source "lfs-core" "0.17.0"
                "1l3gzzcvk5vjc0c70y7v812nkj21vswnv7kap5kb3s74rl2m2x60"))

(define rust-libc-0.2.186
  (crate-source "libc" "0.2.186"
                "0rnyhzjyqq9x56skkllbjzzzwym3r61lq3l4hqj64v71gw0r3av8"))

(define rust-libfuzzer-sys-0.4.13
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "libfuzzer-sys" "0.4.13"
                "1li9z5q55wi81zzyifm7a4rw1xvcclsnqsqbkbvrk86bl50jzzd9"))

(define rust-libgit2-sys-0.18.5+1.9.4
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "libgit2-sys" "0.18.5+1.9.4"
                "18lwqnhy7qxg4iw24s1a0n7aj7qbnryry1iy0w32k4f1xbk6lp80"))

(define rust-libm-0.2.16
  (crate-source "libm" "0.2.16"
                "10brh0a3qjmbzkr5mf5xqi887nhs5y9layvnki89ykz9xb1wxlmn"))

(define rust-libredox-0.1.18
  (crate-source "libredox" "0.1.18"
                "0lj6dqz0pzwm32zqss320bhjryg7vymkxa575pzhc7ig6jg2ahy9"))

(define rust-libsqlite3-sys-0.30.1
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "libsqlite3-sys" "0.30.1"
                "0jcikvgbj84xc7ikdmpc8m4y5lyqgrb9aqblphwk67kv95xgp69f"))

(define rust-libz-sys-1.1.29
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "libz-sys" "1.1.29"
                "1n98kqya7a7a0cxf5n5z3g13rj7a1vqxynk2xc7bja1qfxbrdg45"))

(define rust-linked-hash-map-0.5.6
  (crate-source "linked-hash-map" "0.5.6"
                "03vpgw7x507g524nx5i1jf5dl8k3kv0fzg8v3ip6qqwbpkqww5q7"))

(define rust-linux-raw-sys-0.12.1
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "linux-raw-sys" "0.12.1"
                "0lwasljrqxjjfk9l2j8lyib1babh2qjlnhylqzl01nihw14nk9ij"))

(define rust-linux-raw-sys-0.4.15
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "linux-raw-sys" "0.4.15"
                "1aq7r2g7786hyxhv40spzf2nhag5xbw2axxc1k8z5k1dsgdm4v6j"))

(define rust-litemap-0.8.2
  (crate-source "litemap" "0.8.2"
                "1w7628bc7wwcxc4n4s5kw0610xk06710nh2hn5kwwk2wa91z9nlj"))

(define rust-litrs-1.0.0
  (crate-source "litrs" "1.0.0"
                "14p0kzzkavnngvybl88nvfwv031cc2qx4vaxpfwsiifm8grdglqi"))

(define rust-lock-api-0.4.14
  (crate-source "lock_api" "0.4.14"
                "0rg9mhx7vdpajfxvdjmgmlyrn20ligzqvn8ifmaz7dc79gkrjhr2"))

(define rust-log-0.4.33
  (crate-source "log" "0.4.33"
                "1bd9dmk22pxgnf0h0slba6rz99zb0a0b2mdhpk8p92bp26ycbvhc"))

(define rust-loop9-0.1.5
  (crate-source "loop9" "0.1.5"
                "0qphc1c0cbbx43pwm6isnwzwbg6nsxjh7jah04n1sg5h4p0qgbhg"))

(define rust-lru-0.16.4
  (crate-source "lru" "0.16.4"
                "0fgg35wrpfdrkv9hcabkg92g3sv4867g1rir7ay9lq1zs3ayhrkz"))

(define rust-mach2-0.4.3
  (crate-source "mach2" "0.4.3"
                "0i6vcnbq5v51whgyidzhf7cbxqrmj2nkw8z0m2ib02rc60mjhh6n"))

(define rust-maybe-rayon-0.1.1
  (crate-source "maybe-rayon" "0.1.1"
                "06cmvhj4n36459g327ng5dnj8d58qs472pv5ahlhm7ynxl6g78cf"))

(define rust-memchr-2.8.3
  (crate-source "memchr" "2.8.3"
                "161xa63ipfanf8v3nb82xd5hqgydv55nzw59wyngqbz6alfaz2yg"))

(define rust-memmap2-0.9.11
  (crate-source "memmap2" "0.9.11"
                "1h4qnzgarnn488ljjpg9ns5y4bw0sq0xv0fj0iqywagjnz8rw8fi"))

(define rust-memoffset-0.7.1
  (crate-source "memoffset" "0.7.1"
                "1x2zv8hv9c9bvgmhsjvr9bymqwyxvgbca12cm8xkhpyy5k1r7s2x"))

(define rust-minimad-0.13.1
  (crate-source "minimad" "0.13.1"
                "1lj5szpri8hjf38qrmg0i7vabp9b1rwakm5nly86a63d484dgid9"))

(define rust-minimad-0.16.0
  (crate-source "minimad" "0.16.0"
                "0bynl7jnykrkddaysm2wljrn012awvm94hcas5saihxf57l2wqyy"))

(define rust-miniz-oxide-0.8.9
  (crate-source "miniz_oxide" "0.8.9"
                "05k3pdg8bjjzayq3rf0qhpirq9k37pxnasfn4arbs17phqn6m9qz"))

(define rust-mio-1.2.1
  (crate-source "mio" "1.2.1"
                "1nkggmrlnjs93w8rja4lvjj4aml1xqahgimv1h0p7d373kvhmg82"))

(define rust-mutate-once-0.1.2
  (crate-source "mutate_once" "0.1.2"
                "1byj4yz6h0mdx3mmj0mq23ma59kw41pckspr2gz8rl22k0y27lhk"))

(define rust-new-debug-unreachable-1.0.6
  (crate-source "new_debug_unreachable" "1.0.6"
                "11phpf1mjxq6khk91yzcbd3ympm78m3ivl7xg6lg2c0lf66fy3k5"))

(define rust-nix-0.26.4
  (crate-source "nix" "0.26.4"
                "06xgl4ybb8pvjrbmc3xggbgk3kbs1j0c4c0nzdfrmpbgrkrym2sr"))

(define rust-nix-0.29.0
  (crate-source "nix" "0.29.0"
                "0ikvn7s9r2lrfdm3mx1h7nbfjvcc6s9vxdzw7j5xfkd2qdnp9qki"))

(define rust-nix-0.31.3
  (crate-source "nix" "0.31.3"
                "0gbwnjfny9rq9hl5bz4ry520n9rnfknna4bg88n66f7zx3yx486g"))

(define rust-nom-8.0.0
  (crate-source "nom" "8.0.0"
                "01cl5xng9d0gxf26h39m0l8lprgpa00fcc75ps1yzgbib1vn35yz"))

(define rust-noop-proc-macro-0.3.0
  (crate-source "noop_proc_macro" "0.3.0"
                "1j2v1c6ric4w9v12h34jghzmngcwmn0hll1ywly4h6lcm4rbnxh6"))

(define rust-normpath-1.5.1
  (crate-source "normpath" "1.5.1"
                "06mjr8agm6gkjc1z545b8f3l58hx72cbcys328xrzacz4vvmx65r"))

(define rust-notify-8.2.0
  (crate-source "notify" "8.2.0"
                "1hrb83451vm5cpjw83nz5skgwjg5ara28zq8nxsqbzsif690fgad"))

(define rust-notify-types-2.1.0
  (crate-source "notify-types" "2.1.0"
                "0yj710mxd4lsaz4hq7601mh6xb02awb8hg4z6lvh76ik1vpczf22"))

(define rust-num-bigint-0.4.8
  (crate-source "num-bigint" "0.4.8"
                "0ry3xjal8f5xhdinani268ci13h14mf7j4w0y1gflfzhw3knk7n8"))

(define rust-num-complex-0.4.6
  (crate-source "num-complex" "0.4.6"
                "15cla16mnw12xzf5g041nxbjjm9m85hdgadd5dl5d0b30w9qmy3k"))

(define rust-num-conv-0.2.2
  (crate-source "num-conv" "0.2.2"
                "0hg4f9bwmy7cwpxdkm165dmkfc8jhkkayci234jsmi5ssb33j5sj"))

(define rust-num-derive-0.4.2
  (crate-source "num-derive" "0.4.2"
                "00p2am9ma8jgd2v6xpsz621wc7wbn1yqi71g15gc3h67m7qmafgd"))

(define rust-num-integer-0.1.46
  (crate-source "num-integer" "0.1.46"
                "13w5g54a9184cqlbsq80rnxw4jj4s0d8wv75jsq5r2lms8gncsbr"))

(define rust-num-rational-0.4.2
  (crate-source "num-rational" "0.4.2"
                "093qndy02817vpgcqjnj139im3jl7vkq4h68kykdqqh577d18ggq"))

(define rust-num-traits-0.2.19
  (crate-source "num-traits" "0.2.19"
                "0h984rhdkkqd4ny9cif7y2azl3xdfb7768hb9irhpsch4q3gq787"))

(define rust-objc-sys-0.3.5
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "objc-sys" "0.3.5"
                "0423gry7s3rmz8s3pzzm1zy5mdjif75g6dbzc2lf2z0c77fipffd"))

(define rust-objc2-0.5.2
  (crate-source "objc2" "0.5.2"
                "015qa2d3vh7c1j2736h5wjrznri7x5ic35vl916c22gzxva8b9s6"))

(define rust-objc2-app-kit-0.2.2
  (crate-source "objc2-app-kit" "0.2.2"
                "1zqyi5l1bm26j1bgmac9783ah36m5kcrxlqp5carglnpwgcrms74"))

(define rust-objc2-core-data-0.2.2
  (crate-source "objc2-core-data" "0.2.2"
                "1vvk8zjylfjjj04dzawydmqqz5ajvdkhf22cnb07ihbiw14vyzv1"))

(define rust-objc2-core-image-0.2.2
  (crate-source "objc2-core-image" "0.2.2"
                "102csfb82zi2sbzliwsfd589ckz0gysf7y6434c9zj97lmihj9jm"))

(define rust-objc2-encode-4.1.0
  (crate-source "objc2-encode" "4.1.0"
                "0cqckp4cpf68mxyc2zgnazj8klv0z395nsgbafa61cjgsyyan9gg"))

(define rust-objc2-foundation-0.2.2
  (crate-source "objc2-foundation" "0.2.2"
                "1a6mi77jsig7950vmx9ydvsxaighzdiglk5d229k569pvajkirhf"))

(define rust-objc2-metal-0.2.2
  (crate-source "objc2-metal" "0.2.2"
                "1mmdga66qpxrcfq3gxxhysfx3zg1hpx4z886liv3j0pnfq9bl36x"))

(define rust-objc2-quartz-core-0.2.2
  (crate-source "objc2-quartz-core" "0.2.2"
                "0ynw8819c36l11rim8n0yzk0fskbzrgaqayscyqi8swhzxxywaz4"))

(define rust-once-cell-1.21.4
  (crate-source "once_cell" "1.21.4"
                "0l1v676wf71kjg2khch4dphwh1jp3291ffiymr2mvy1kxd5kwz4z"))

(define rust-once-cell-polyfill-1.70.2
  (crate-source "once_cell_polyfill" "1.70.2"
                "1zmla628f0sk3fhjdjqzgxhalr2xrfna958s632z65bjsfv8ljrq"))

(define rust-open-1.7.1
  (crate-source "open" "1.7.1"
                "00828zcxdy3r38inz48jgnszgvqgi1a3bi2rrhij86mqsqq7msnw"))

(define rust-opener-0.8.5
  (crate-source "opener" "0.8.5"
                "1s8m6h4b25x1476yysp9lajnfy8vjlwg5w51r470s392gbq3zc5j"))

(define rust-option-ext-0.2.0
  (crate-source "option-ext" "0.2.0"
                "0zbf7cx8ib99frnlanpyikm1bx8qn8x602sw1n7bg6p9x94lyx04"))

(define rust-parking-lot-0.12.5
  (crate-source "parking_lot" "0.12.5"
                "06jsqh9aqmc94j2rlm8gpccilqm6bskbd67zf6ypfc0f4m9p91ck"))

(define rust-parking-lot-core-0.9.12
  (crate-source "parking_lot_core" "0.9.12"
                "1hb4rggy70fwa1w9nb0svbyflzdc69h047482v2z3sx2hmcnh896"))

(define rust-paste-1.0.15
  (crate-source "paste" "1.0.15"
                "02pxffpdqkapy292harq6asfjvadgp1s005fip9ljfsn9fvxgh2p"))

(define rust-pathdiff-0.2.3
  (crate-source "pathdiff" "0.2.3"
                "1lrqp4ip05df8dzldq6gb2c1sq2gs54gly8lcnv3rhav1qhwx56z"))

(define rust-percent-encoding-2.3.2
  (crate-source "percent-encoding" "2.3.2"
                "083jv1ai930azvawz2khv7w73xh8mnylk7i578cifndjn5y64kwv"))

(define rust-phf-0.13.1
  (crate-source "phf" "0.13.1"
                "1pzswx5gdglgjgp4azyzwyr4gh031r0kcnpqq6jblga72z3jsmn1"))

(define rust-phf-generator-0.13.1
  (crate-source "phf_generator" "0.13.1"
                "0dwpp11l41dy9mag4phkyyvhpf66lwbp79q3ik44wmhyfqxcwnhk"))

(define rust-phf-macros-0.13.1
  (crate-source "phf_macros" "0.13.1"
                "1vv9h8pr7xh18sigpvq1hxc8q9nmjmv6gdpqsp65krxiahmh6bw1"))

(define rust-phf-shared-0.13.1
  (crate-source "phf_shared" "0.13.1"
                "0rpjchnswm0x5l4mz9xqfpw0j4w68sjvyqrdrv13h7lqqmmyyzz5"))

(define rust-pico-args-0.5.0
  (crate-source "pico-args" "0.5.0"
                "05d30pvxd6zlnkg2i3ilr5a70v3f3z2in18m67z25vinmykngqav"))

(define rust-pin-project-lite-0.2.17
  (crate-source "pin-project-lite" "0.2.17"
                "1kfmwvs271si96zay4mm8887v5khw0c27jc9srw1a75ykvgj54x8"))

(define rust-pkg-config-0.3.33
  (crate-source "pkg-config" "0.3.33"
                "17jnqmcbxsnwhg9gjf0nh6dj5k0x3hgwi3mb9krjnmfa9v435w8r"))

(define rust-plist-1.10.0
  (crate-source "plist" "1.10.0"
                "11bz122270sdjaldw2pq77sc0hfj2a3zbh4s3521wpfxlrfxd8bx"))

(define rust-png-0.17.16
  (crate-source "png" "0.17.16"
                "09kmkms9fmkbkarw0lnf0scqvjwwg3r7riddag0i3q39r0pil5c2"))

(define rust-potential-utf-0.1.5
  (crate-source "potential_utf" "0.1.5"
                "0r0518fr32xbkgzqap509s3r60cr0iancsg9j1jgf37cyz7b20q1"))

(define rust-powerfmt-0.2.0
  (crate-source "powerfmt" "0.2.0"
                "14ckj2xdpkhv3h6l5sdmb9f1d57z8hbfpdldjc2vl5givq2y77j3"))

(define rust-ppv-lite86-0.2.21
  (crate-source "ppv-lite86" "0.2.21"
                "1abxx6qz5qnd43br1dd9b2savpihzjza8gb4fbzdql1gxp2f7sl5"))

(define rust-proc-macro2-1.0.106
  (crate-source "proc-macro2" "1.0.106"
                "0d09nczyaj67x4ihqr5p7gxbkz38gxhk4asc0k8q23g9n85hzl4g"))

(define rust-proc-status-0.1.1
  (crate-source "proc-status" "0.1.1"
                "04lp8kdj75m8s1hwxslyzz3fdgbs6zy4zfjhg2s7cysyj6nc1q7h"))

(define rust-profiling-1.0.18
  (crate-source "profiling" "1.0.18"
                "1xdwlvxlgy99nn1dra7arzinkc8lbqljvcwpq70m7g16lda5wn9x"))

(define rust-profiling-procmacros-1.0.18
  (crate-source "profiling-procmacros" "1.0.18"
                "1jxvqff6j1z7ph3qghw2xhv18z7pf6cs6cja6fwscjwsdfis9224"))

(define rust-pulp-0.22.3
  (crate-source "pulp" "0.22.3"
                "0sj9294yb8yr6z7vdlx467cfs4vvcwnygj0p8wpfqhlnk1ds8sh4"))

(define rust-pulp-wasm-simd-flag-0.1.1
  (crate-source "pulp-wasm-simd-flag" "0.1.1"
                "0h67yf9psibw4768lihrcidsdfqiqnhrrrblbaa64fcwggh713qx"))

(define rust-qoi-0.4.1
  (crate-source "qoi" "0.4.1"
                "00c0wkb112annn2wl72ixyd78mf56p4lxkhlmsggx65l3v3n8vbz"))

(define rust-quick-error-2.0.1
  (crate-source "quick-error" "2.0.1"
                "18z6r2rcjvvf8cn92xjhm2qc3jpd1ljvcbf12zv0k9p565gmb4x9"))

(define rust-quick-xml-0.41.0
  (crate-source "quick-xml" "0.41.0"
                "1h9y8zry34r3mxfd5vqfj50vvvzvri4kzbx5d657jkqjalg4aq76"))

(define rust-quote-1.0.46
  (crate-source "quote" "1.0.46"
                "0s034glrlav8nzqy2yskqzv52ncy82k126sm2jk5j1vs1iylbg6z"))

(define rust-r-efi-6.0.0
  (crate-source "r-efi" "6.0.0"
                "1gyrl2k5fyzj9k7kchg2n296z5881lg7070msabid09asp3wkp7q"))

(define rust-rand-0.8.6
  (crate-source "rand" "0.8.6"
                "12kd4rljn86m00rcaz4c1rcya4mb4gk5ig6i8xq00a8wjgxfr82w"))

(define rust-rand-chacha-0.3.1
  (crate-source "rand_chacha" "0.3.1"
                "123x2adin558xbhvqb8w4f6syjsdkmqff8cxwhmjacpsl1ihmhg6"))

(define rust-rand-core-0.6.4
  (crate-source "rand_core" "0.6.4"
                "0b4j2v4cb5krak1pv6kakv4sz6xcwbrmy2zckc32hsigbrwy82zc"))

(define rust-rav1e-0.7.1
  (crate-source "rav1e" "0.7.1"
                "1sawva6nmj2fvynydbcirr3nb7wjyg0id2hz2771qnv6ly0cx1yd"))

(define rust-ravif-0.11.20
  (crate-source "ravif" "0.11.20"
                "0sryi4qzwv3rjhy4h0z9fb0zw3k3i814j3ck2psvjsnivmpw49aq"))

(define rust-raw-cpuid-11.6.0
  (crate-source "raw-cpuid" "11.6.0"
                "11j1lmrjqqnc43bxkrz0xai1g9piw3z9aap53qsj8cnpb7fd1329"))

(define rust-rayon-1.12.0
  (crate-source "rayon" "1.12.0"
                "0vcj63xgnk72c30vdrak7dhl53snnaqv9x2faf1d94hzg1kb2fgv"))

(define rust-rayon-core-1.13.0
  (crate-source "rayon-core" "1.13.0"
                "14dbr0sq83a6lf1rfjq5xdpk5r6zgzvmzs5j6110vlv2007qpq92"))

(define rust-reborrow-0.5.5
  (crate-source "reborrow" "0.5.5"
                "0c14ccj3fdf47a1ya21bkxqv7s2hxrcfhaw98aqd6jqg029i2983"))

(define rust-redox-syscall-0.5.18
  (crate-source "redox_syscall" "0.5.18"
                "0b9n38zsxylql36vybw18if68yc9jczxmbyzdwyhb9sifmag4azd"))

(define rust-redox-users-0.4.6
  (crate-source "redox_users" "0.4.6"
                "0hya2cxx6hxmjfxzv9n8rjl5igpychav7zfi1f81pz6i4krry05s"))

(define rust-regex-1.12.4
  (crate-source "regex" "1.12.4"
                "1fm6si2xpmhwqflabdqsakc0qkq718wx2ljl37nbj75fb5vjnagi"))

(define rust-regex-automata-0.4.14
  (crate-source "regex-automata" "0.4.14"
                "13xf7hhn4qmgfh784llcp2kzrvljd13lb2b1ca0mwnf15w9d87bf"))

(define rust-regex-syntax-0.8.11
  (crate-source "regex-syntax" "0.8.11"
                "1m25h5q2wp976fb9gc3dsc9l99svcvd5cri8lncb51c46ydgzxnn"))

(define rust-resvg-0.45.1
  (crate-source "resvg" "0.45.1"
                "0hyz89wyasn0wdnpw7qy5iyl4xv3yx36hk3crb4h6pm5q2c8g4m8"))

(define rust-rgb-0.8.53
  (crate-source "rgb" "0.8.53"
                "1i0c55whln68zs6f5qqrkbg1mzai0p3qk1mwkwzdgr9i3dw4pcs7"))

(define rust-roff-1.1.1
  (crate-source "roff" "1.1.1"
                "12c1pibjxdjai80hpalxgqkzn30316x49iry4rdscrcn3mz42g1j"))

(define rust-roxmltree-0.20.0
  (crate-source "roxmltree" "0.20.0"
                "15vw91ps91wkmmgy62khf9zb63bdinvm80957dascbsw7dwvc83c"))

(define rust-rusqlite-0.32.1
  (crate-source "rusqlite" "0.32.1"
                "0vlx040bppl414pbjgbp7qr4jdxwszi9krx0m63zzf2f2whvflvp"))

(define rust-rustc-hash-2.1.3
  (crate-source "rustc-hash" "2.1.3"
                "0bbla578m87qmf3yr55q49l97gxn7z0ha1dwqlnvwwc58ad7y7kb"))

(define rust-rustc-version-0.4.1
  (crate-source "rustc_version" "0.4.1"
                "14lvdsmr5si5qbqzrajgb6vfn69k0sfygrvfvr2mps26xwi3mjyg"))

(define rust-rustix-0.38.44
  (crate-source "rustix" "0.38.44"
                "0m61v0h15lf5rrnbjhcb9306bgqrhskrqv7i1n0939dsw8dbrdgx"))

(define rust-rustix-1.1.4
  (crate-source "rustix" "1.1.4"
                "14511f9yjqh0ix07xjrjpllah3325774gfwi9zpq72sip5jlbzmn"))

(define rust-rustversion-1.0.23
  (crate-source "rustversion" "1.0.23"
                "07z2a843fs80fawwflj9jwn49k9b0bd0dhhbvy0ar69vaxd72m6g"))

(define rust-rustybuzz-0.20.1
  (crate-source "rustybuzz" "0.20.1"
                "00hp1gwykjfli258zs7lqg8p2zdh94dv2mw8zx7f73m0z2b7qg7x"))

(define rust-ryu-1.0.23
  (crate-source "ryu" "1.0.23"
                "0zs70sg00l2fb9jwrf6cbkdyscjs53anrvai2hf7npyyfi5blx4p"))

(define rust-same-file-1.0.6
  (crate-source "same-file" "1.0.6"
                "00h5j1w87dmhnvbv9l8bic3y7xxsnjmssvifw2ayvgx9mb1ivz4k"))

(define rust-scopeguard-1.2.0
  (crate-source "scopeguard" "1.2.0"
                "0jcz9sd47zlsgcnm1hdw0664krxwb5gczlif4qngj2aif8vky54l"))

(define rust-secular-1.0.1
  (crate-source "secular" "1.0.1"
                "1davw8k29sycm7f4674d4m44jfa7pn812jm3m3mm76srvz63xp63"))

(define rust-semver-1.0.28
  (crate-source "semver" "1.0.28"
                "1kaimrpy876bcgi8bfj0qqfxk77zm9iz2zhn1hp9hj685z854y4a"))

(define rust-serde-1.0.228
  (crate-source "serde" "1.0.228"
                "17mf4hhjxv5m90g42wmlbc61hdhlm6j9hwfkpcnd72rpgzm993ls"))

(define rust-serde-core-1.0.228
  (crate-source "serde_core" "1.0.228"
                "1bb7id2xwx8izq50098s5j2sqrrvk31jbbrjqygyan6ask3qbls1"))

(define rust-serde-derive-1.0.228
  (crate-source "serde_derive" "1.0.228"
                "0y8xm7fvmr2kjcd029g9fijpndh8csv5m20g4bd76w8qschg4h6m"))

(define rust-serde-json-1.0.150
  (crate-source "serde_json" "1.0.150"
                "1ffgfhy9kndjnrz8lmy95pr758p2zk8dxv6yi99x0vkkni24w0g8"))

(define rust-serde-spanned-0.6.9
  (crate-source "serde_spanned" "0.6.9"
                "18vmxq6qfrm110caszxrzibjhy2s54n1g5w1bshxq9kjmz7y0hdz"))

(define rust-serde-spanned-1.1.1
  (crate-source "serde_spanned" "1.1.1"
                "09jzk7i6wihn3d8i3wi4j4n98ghi93c3b8m8k64nxq0ijn3vaqk6"))

(define rust-shlex-2.0.1
  (crate-source "shlex" "2.0.1"
                "1fjsll1cd7d2bcpdij9kd6w62rpbc7qqzvydvs021vsmr1cxvypq"))

(define rust-signal-hook-0.3.18
  (crate-source "signal-hook" "0.3.18"
                "1qnnbq4g2vixfmlv28i1whkr0hikrf1bsc4xjy2aasj2yina30fq"))

(define rust-signal-hook-mio-0.2.5
  (crate-source "signal-hook-mio" "0.2.5"
                "1k20rr76ngvmzr6kskkl7dv8iyb84cbydpjbjk3mpcj0lykijnmp"))

(define rust-signal-hook-registry-1.4.8
  (crate-source "signal-hook-registry" "1.4.8"
                "06vc7pmnki6lmxar3z31gkyg9cw7py5x9g7px70gy2hil75nkny4"))

(define rust-simd-adler32-0.3.9
  (crate-source "simd-adler32" "0.3.9"
                "0532ysdwcvzyp2bwpk8qz0hijplcdwpssr5gy5r7qwqqy5z5qgbh"))

(define rust-simd-helpers-0.1.0
  (crate-source "simd_helpers" "0.1.0"
                "19idqicn9k4vhd04ifh2ff41wvna79zphdf2c81rlmpc7f3hz2cm"))

(define rust-simplecss-0.2.2
  (crate-source "simplecss" "0.2.2"
                "0v0kid7b2602kcka2x2xs9wwfjf8lnvpgpl8x287qg4wra1ni73s"))

(define rust-siphasher-1.0.3
  (crate-source "siphasher" "1.0.3"
                "0jg6l9xyzca5vy4h6gf8r6p4kk84g98fk95pzig1kq6cr4z8grcf"))

(define rust-slab-0.4.12
  (crate-source "slab" "0.4.12"
                "1xcwik6s6zbd3lf51kkrcicdq2j4c1fw0yjdai2apy9467i0sy8c"))

(define rust-slotmap-1.1.1
  (crate-source "slotmap" "1.1.1"
                "0f20xf53zaysx9ydzkwwqm6hsjyb8lj2j6amhg57iln3jcy8rmdx"))

(define rust-smallvec-1.15.2
  (crate-source "smallvec" "1.15.2"
                "143wzbqf6vgapdp2z4qpl0yvlqcn17s8cnk8m28rqly808zsdmlf"))

(define rust-snafu-0.7.5
  (crate-source "snafu" "0.7.5"
                "1mj2j2gfbf8mm1hr02zrbrqrh2zp01f61xgkx0lpln2w0ankgpp4"))

(define rust-snafu-derive-0.7.5
  (crate-source "snafu-derive" "0.7.5"
                "1gzy9rzggs090zf7hfvgp4lm1glrmg9qzh796686jnq7bxk7j04r"))

(define rust-splitty-1.0.2
  (crate-source "splitty" "1.0.2"
                "0ryxmv3yfd96qdc4zasjmqw2r1j62fpnqq2vclfdgr17d0g0mdrd"))

(define rust-stable-deref-trait-1.2.1
  (crate-source "stable_deref_trait" "1.2.1"
                "15h5h73ppqyhdhx6ywxfj88azmrpml9gl6zp3pwy2malqa6vxqkc"))

(define rust-str-buf-1.0.6
  (crate-source "str-buf" "1.0.6"
                "1l7q4nha7wpsr0970bfqm773vhmpwr9l6rr8r4gwgrh46wvdh24y"))

(define rust-strict-0.2.0
  (crate-source "strict" "0.2.0"
                "01j0h28xzg07kd1km5m0wz88asp6hwh45n8q8bdkjymqlpz4897l"))

(define rust-strict-num-0.1.1
  (crate-source "strict-num" "0.1.1"
                "0cb7l1vhb8zj90mzm8avlk815k40sql9515s865rqdrdfavvldv6"))

(define rust-strsim-0.11.1
  (crate-source "strsim" "0.11.1"
                "0kzvqlw8hxqb7y598w1s0hxlnmi84sg5vsipp3yg5na5d1rvba3x"))

(define rust-svg-0.16.0
  (crate-source "svg" "0.16.0"
                "10scx3bxv9sv5jam4aar1bbbrmjsp7ins04phzggxmkg69f1qgjq"))

(define rust-svgtypes-0.15.3
  (crate-source "svgtypes" "0.15.3"
                "1z4a0b76ww6rf2c8zdapqh2a7r7kmmy7m957q5h5ics4zwgm9iv8"))

(define rust-syn-1.0.109
  (crate-source "syn" "1.0.109"
                "0ds2if4600bd59wsv7jjgfkayfzy3hnazs394kz6zdkmna8l3dkj"))

(define rust-syn-2.0.118
  (crate-source "syn" "2.0.118"
                "08hlbc32lqd5d67p26ck7chg0rkclsw9as6f96vfn4s2j1zyb6hv"))

(define rust-synstructure-0.13.2
  (crate-source "synstructure" "0.13.2"
                "1lh9lx3r3jb18f8sbj29am5hm9jymvbwh6jb1izsnnxgvgrp12kj"))

(define rust-syntect-no-panic-6.0.0
  (crate-source "syntect-no-panic" "6.0.0"
                "1im47kg8jdc70v4xn43wkiz2kl9mgjjznrgnwanspsaxryx8z96m"))

(define rust-system-deps-6.2.2
  (crate-source "system-deps" "6.2.2"
                "0j93ryw031n3h8b0nfpj5xwh3ify636xmv8kxianvlyyipmkbrd3"))

(define rust-target-lexicon-0.12.16
  (crate-source "target-lexicon" "0.12.16"
                "1cg3bnx1gdkdr5hac1hzxy64fhw4g7dqkd0n3dxy5lfngpr1mi31"))

(define rust-tempfile-3.27.0
  (crate-source "tempfile" "3.27.0"
                "1gblhnyfjsbg9wjg194n89wrzah7jy3yzgnyzhp56f3v9jd7wj9j"))

(define rust-termimad-0.31.3
  (crate-source "termimad" "0.31.3"
                "1dnbqanrhahx6vy94h74vvpqy7ri2cy0vdvnagr9g74kqk1dj0bk"))

(define rust-termimad-0.35.0
  (crate-source "termimad" "0.35.0"
                "1x27jr9vaf4ba24blwna64bx1jq10zkf0iqbm6kp70pmmfphcfch"))

(define rust-terminal-clipboard-0.4.1
  (crate-source "terminal-clipboard" "0.4.1"
                "0cd125j4wgdi9fy39vmzmiz93zq9g7gjgsspwq0vai7pbk5xh3sf"))

(define rust-terminal-light-1.9.0
  (crate-source "terminal-light" "1.9.0"
                "0vgfk98qvnzgnpvpsv2p6wfbbyjk8vr72p49gka4xwjvnd376c3r"))

(define rust-termux-clipboard-0.1.0
  (crate-source "termux-clipboard" "0.1.0"
                "0vz3b2c0ra7x5wg6i56247j8z58wkv3dknznjidk34rjr89zyslz"))

(define rust-thiserror-1.0.69
  (crate-source "thiserror" "1.0.69"
                "0lizjay08agcr5hs9yfzzj6axs53a2rgx070a1dsi3jpkcrzbamn"))

(define rust-thiserror-2.0.18
  (crate-source "thiserror" "2.0.18"
                "1i7vcmw9900bvsmay7mww04ahahab7wmr8s925xc083rpjybb222"))

(define rust-thiserror-impl-1.0.69
  (crate-source "thiserror-impl" "1.0.69"
                "1h84fmn2nai41cxbhk6pqf46bxqq1b344v8yz089w1chzi76rvjg"))

(define rust-thiserror-impl-2.0.18
  (crate-source "thiserror-impl" "2.0.18"
                "1mf1vrbbimj1g6dvhdgzjmn6q09yflz2b92zs1j9n3k7cxzyxi7b"))

(define rust-tiff-0.9.1
  (crate-source "tiff" "0.9.1"
                "0ghyxlz566dzc3scvgmzys11dhq2ri77kb8sznjakijlxby104xs"))

(define rust-time-0.3.53
  (crate-source "time" "0.3.53"
                "0l4aans0kv47y53736cjs0pnvdz91iyywrkqbrxk6cmrvknsmpqq"))

(define rust-time-core-0.1.9
  (crate-source "time-core" "0.1.9"
                "028ix0ax7ixp1h1k5zsqwgw85w6y1q32irslma7ci6ddd5kr074y"))

(define rust-time-macros-0.2.31
  (crate-source "time-macros" "0.2.31"
                "0pq8y9bm1zr008dmjs62qdfwsigv2kwkga5sj0d4jvk625qvhcf4"))

(define rust-tiny-skia-0.11.4
  (crate-source "tiny-skia" "0.11.4"
                "1aq9gd4qh4418g8v08qzakqqggx8hl66qcianl3k5bjdsja37lc3"))

(define rust-tiny-skia-path-0.11.4
  (crate-source "tiny-skia-path" "0.11.4"
                "14ywbdfakvacl6rxxmzbnycplaxpc6i2linh2yqk0sp8qb07z7lw"))

(define rust-tinystr-0.8.3
  (crate-source "tinystr" "0.8.3"
                "0vfr8x285w6zsqhna0a9jyhylwiafb2kc8pj2qaqaahw48236cn8"))

(define rust-tinyvec-1.11.0
  (crate-source "tinyvec" "1.11.0"
                "1wvycrghzmaysnw34kzwnf0mfx6r75045s24r214wnnjadqfcq9y"))

(define rust-tinyvec-macros-0.1.1
  (crate-source "tinyvec_macros" "0.1.1"
                "081gag86208sc3y6sdkshgw3vysm5d34p431dzw0bshz66ncng0z"))

(define rust-toml-0.8.23
  (crate-source "toml" "0.8.23"
                "0qnkrq4lm2sdhp3l6cb6f26i8zbnhqb7mhbmksd550wxdfcyn6yw"))

(define rust-toml-0.9.12+spec-1.1.0
  (crate-source "toml" "0.9.12+spec-1.1.0"
                "0qwqbrymqn88mg2yqyq3rj52z6p20448z0jxdbpjsbpwg5g894ng"))

(define rust-toml-datetime-0.6.11
  (crate-source "toml_datetime" "0.6.11"
                "077ix2hb1dcya49hmi1avalwbixmrs75zgzb3b2i7g2gizwdmk92"))

(define rust-toml-datetime-0.7.5+spec-1.1.0
  (crate-source "toml_datetime" "0.7.5+spec-1.1.0"
                "0iqkgvgsxmszpai53dbip7sf2igic39s4dby29dbqf1h9bnwzqcj"))

(define rust-toml-edit-0.22.27
  (crate-source "toml_edit" "0.22.27"
                "16l15xm40404asih8vyjvnka9g0xs9i4hfb6ry3ph9g419k8rzj1"))

(define rust-toml-parser-1.1.2+spec-1.1.0
  (crate-source "toml_parser" "1.1.2+spec-1.1.0"
                "09kmzc55a0j21whm290wlf5a8b18a0qc87a1s8sncrckc6wfkax2"))

(define rust-toml-writer-1.1.1+spec-1.1.0
  (crate-source "toml_writer" "1.1.1+spec-1.1.0"
                "1nwjhvvrxz8f4ck1qi4xcz2x9qhpci37nrknhxxf9sqk22dsyvbm"))

(define rust-tracing-0.1.44
  (crate-source "tracing" "0.1.44"
                "006ilqkg1lmfdh3xhg3z762izfwmxcvz0w7m4qx2qajbz9i1drv3"))

(define rust-tracing-core-0.1.36
  (crate-source "tracing-core" "0.1.36"
                "16mpbz6p8vd6j7sf925k9k8wzvm9vdfsjbynbmaxxyq6v7wwm5yv"))

(define rust-trash-5.2.2
  (crate-source "trash" "5.2.2"
                "0wdq8ax8z47cabs7j9hkghli3pyzaxq8z18diw5dd1bd1imnqx12"))

(define rust-ttf-parser-0.25.1
  (crate-source "ttf-parser" "0.25.1"
                "0cbgqglcwwjg3hirwq6xlza54w04mb5x02kf7zx4hrw50xmr1pyj"))

(define rust-umask-2.1.0
  (crate-source "umask" "2.1.0"
                "071xszsd6znk0ik11pxl7mwhf07clsiq3qpzw1ac0dcyak14d6pc"))

(define rust-unicode-bidi-0.3.18
  (crate-source "unicode-bidi" "0.3.18"
                "1xcxwbsqa24b8vfchhzyyzgj0l6bn51ib5v8j6krha0m77dva72w"))

(define rust-unicode-bidi-mirroring-0.4.0
  (crate-source "unicode-bidi-mirroring" "0.4.0"
                "1zirs1z3ahlwy7swg7apnm3pc6vix1g15q0kn6fx8rmvc266xyjx"))

(define rust-unicode-ccc-0.4.0
  (crate-source "unicode-ccc" "0.4.0"
                "0gjhxwx27ywm3rcbb0m5q20w8zxi51440b3ps6swi6ywpj4d8qff"))

(define rust-unicode-ident-1.0.24
  (crate-source "unicode-ident" "1.0.24"
                "0xfs8y1g7syl2iykji8zk5hgfi5jw819f5zsrbaxmlzwsly33r76"))

(define rust-unicode-normalization-0.1.25
  (crate-source "unicode-normalization" "0.1.25"
                "1s76dcrxw7vs32yhpi0p074apdc3s7lak7809f3qvclwij3zdm2z"))

(define rust-unicode-properties-0.1.4
  (crate-source "unicode-properties" "0.1.4"
                "07fpm3sqq7lm9gmgpxa93z31q933h3c3ypfwy4cdh6l42g3miw3x"))

(define rust-unicode-script-0.5.8
  (crate-source "unicode-script" "0.5.8"
                "1vmifpgd0map3frmvhszhl96k82crcry083prv05wii7p45x8fiq"))

(define rust-unicode-segmentation-1.13.3
  (crate-source "unicode-segmentation" "1.13.3"
                "1a47zaq83p386r3baq4m018xd5q4q0grdg56i1x042dzn71x7xf6"))

(define rust-unicode-vo-0.1.0
  (crate-source "unicode-vo" "0.1.0"
                "151sha088v9jyfvbg5164xh4dk72g53b82xm4zzbf5dlagzqdlxi"))

(define rust-unicode-width-0.1.14
  (crate-source "unicode-width" "0.1.14"
                "1bzn2zv0gp8xxbxbhifw778a7fc93pa6a1kj24jgg9msj07f7mkx"))

(define rust-unicode-width-0.2.2
  (crate-source "unicode-width" "0.2.2"
                "0m7jjzlcccw716dy9423xxh0clys8pfpllc5smvfxrzdf66h9b5l"))

(define rust-url-2.5.8
  (crate-source "url" "2.5.8"
                "1v8f7nx3hpr1qh76if0a04sj08k86amsq4h8cvpw6wvk76jahrzz"))

(define rust-urlencoding-2.1.3
  (crate-source "urlencoding" "2.1.3"
                "1nj99jp37k47n0hvaz5fvz7z6jd0sb4ppvfy3nphr1zbnyixpy6s"))

(define rust-usvg-0.45.1
  (crate-source "usvg" "0.45.1"
                "1vs7gfhyxjgkgibgwfjniwrszfw0iivj1aq06hq8nfxfzc39pgl0"))

(define rust-utf8-iter-1.0.4
  (crate-source "utf8_iter" "1.0.4"
                "1gmna9flnj8dbyd8ba17zigrp9c4c3zclngf5lnb5yvz1ri41hdn"))

(define rust-utf8parse-0.2.2
  (crate-source "utf8parse" "0.2.2"
                "088807qwjq46azicqwbhlmzwrbkz7l4hpw43sdkdyyk524vdxaq6"))

(define rust-uzers-0.12.2
  (crate-source "uzers" "0.12.2"
                "13g1igzqpn5jvsbcp45rs2pw9fsxa1f8pp6j250mpqpy3bxpb0hb"))

(define rust-v-frame-0.3.9
  (crate-source "v_frame" "0.3.9"
                "1qkvb4ks33zck931vzqckjn36hkngj6l2cwmvfsnlpc7r0kpfsv6"))

(define rust-vcpkg-0.2.15
  (crate-source "vcpkg" "0.2.15"
                "09i4nf5y8lig6xgj3f7fyrvzd3nlaw4znrihw8psidvv5yk4xkdc"))

(define rust-version-check-0.9.5
  (crate-source "version_check" "0.9.5"
                "0nhhi4i5x89gm911azqbn7avs9mdacw2i3vcz3cnmz3mv4rqz4hb"))

(define rust-version-compare-0.2.1
  (crate-source "version-compare" "0.2.1"
                "03nziqxwnxlizl42cwsx33vi5xd2cf2jnszhh9rzay7g6xl8bhh3"))

(define rust-vte-0.15.0
  (crate-source "vte" "0.15.0"
                "1g9xgnw7q7zdwgfqa6zfcfsp92wn0j0h13kzsqy0dq3c80c414m5"))

(define rust-walkdir-2.5.0
  (crate-source "walkdir" "2.5.0"
                "0jsy7a710qv8gld5957ybrnc07gavppp963gs32xk4ag8130jy99"))

(define rust-wasi-0.11.1+wasi-snapshot-preview1
  (crate-source "wasi" "0.11.1+wasi-snapshot-preview1"
                "0jx49r7nbkbhyfrfyhz0bm4817yrnxgd3jiwwwfv0zl439jyrwyc"))

(define rust-wasm-bindgen-0.2.126
  (crate-source "wasm-bindgen" "0.2.126"
                "197rma4qg1kb8l4bl7857pgszzval8s1w740g9myyjh92467q1jb"))

(define rust-wasm-bindgen-macro-0.2.126
  (crate-source "wasm-bindgen-macro" "0.2.126"
                "1cda6wl5zyiy7777cfgrix7fhpaqba55l5zpqj4zig7ng7jyaz0n"))

(define rust-wasm-bindgen-macro-support-0.2.126
  (crate-source "wasm-bindgen-macro-support" "0.2.126"
                "03iq412frl2py55skwb3ya08xha0cf6q22zr5kqlwbr675w7r6gk"))

(define rust-wasm-bindgen-shared-0.2.126
  (crate-source "wasm-bindgen-shared" "0.2.126"
                "097a3kbjls447s1lwr41l21x5crrh5vq3h6zsxccz7slrjq4q6yw"))

(define rust-weezl-0.1.12
  (crate-source "weezl" "0.1.12"
                "122a1dhha6cib5az4ihcqlh60ns2bi6rskdv875p94lbvj6wk2m2"))

(define rust-which-4.4.0
  (crate-source "which" "4.4.0"
                "0sd24r17q4j3hc2yjjrg9q4qya1y4n9zq0bj9c2rla1bqn2cfh94"))

(define rust-winapi-0.3.9
  (crate-source "winapi" "0.3.9"
                "06gl025x418lchw1wxj64ycr7gha83m44cjr5sarhynd9xkrm0sw"))

(define rust-winapi-i686-pc-windows-gnu-0.4.0
  (crate-source "winapi-i686-pc-windows-gnu" "0.4.0"
                "1dmpa6mvcvzz16zg6d5vrfy4bxgg541wxrcip7cnshi06v38ffxc"))

(define rust-winapi-util-0.1.11
  (crate-source "winapi-util" "0.1.11"
                "08hdl7mkll7pz8whg869h58c1r9y7in0w0pk8fm24qc77k0b39y2"))

(define rust-winapi-wsapoll-0.1.2
  (crate-source "winapi-wsapoll" "0.1.2"
                "0a1zxmpvxaw75y4lwavi6qbq95cnrz83a5p84rarjxn5g7vcbbqy"))

(define rust-winapi-x86-64-pc-windows-gnu-0.4.0
  (crate-source "winapi-x86_64-pc-windows-gnu" "0.4.0"
                "0gqq64czqb64kskjryj8isp62m2sgvx25yyj3kpc2myh85w24bki"))

(define rust-windows-0.56.0
  (crate-source "windows" "0.56.0"
                "0cp10nzrqgrlk91dpwxjcpzyy6imr5vxr5f898pss7nz3gq9vrhx"))

(define rust-windows-0.62.2
  (crate-source "windows" "0.62.2"
                "10457l9ihrbw8j79z2v4plyjxkf6xvb5npd0lqwmkh702gpaszsj"))

(define rust-windows-aarch64-gnullvm-0.48.5
  (crate-source "windows_aarch64_gnullvm" "0.48.5"
                "1n05v7qblg1ci3i567inc7xrkmywczxrs1z3lj3rkkxw18py6f1b"))

(define rust-windows-aarch64-gnullvm-0.52.6
  (crate-source "windows_aarch64_gnullvm" "0.52.6"
                "1lrcq38cr2arvmz19v32qaggvj8bh1640mdm9c2fr877h0hn591j"))

(define rust-windows-aarch64-gnullvm-0.53.1
  (crate-source "windows_aarch64_gnullvm" "0.53.1"
                "0lqvdm510mka9w26vmga7hbkmrw9glzc90l4gya5qbxlm1pl3n59"))

(define rust-windows-aarch64-msvc-0.48.5
  (crate-source "windows_aarch64_msvc" "0.48.5"
                "1g5l4ry968p73g6bg6jgyvy9lb8fyhcs54067yzxpcpkf44k2dfw"))

(define rust-windows-aarch64-msvc-0.52.6
  (crate-source "windows_aarch64_msvc" "0.52.6"
                "0sfl0nysnz32yyfh773hpi49b1q700ah6y7sacmjbqjjn5xjmv09"))

(define rust-windows-aarch64-msvc-0.53.1
  (crate-source "windows_aarch64_msvc" "0.53.1"
                "01jh2adlwx043rji888b22whx4bm8alrk3khjpik5xn20kl85mxr"))

(define rust-windows-collections-0.3.2
  (crate-source "windows-collections" "0.3.2"
                "0436rjbkqn3j9m2v2lcmwwk0l3n2r57yvqb7fcy4m8d8y5ddkci3"))

(define rust-windows-core-0.56.0
  (crate-source "windows-core" "0.56.0"
                "19pj57bm0rzhlk0ghrccd3i5zvh0ghm52f8cmdc8d3yhs8pfb626"))

(define rust-windows-core-0.62.2
  (crate-source "windows-core" "0.62.2"
                "1swxpv1a8qvn3bkxv8cn663238h2jccq35ff3nsj61jdsca3ms5q"))

(define rust-windows-future-0.3.2
  (crate-source "windows-future" "0.3.2"
                "1jq5qs2dwzf6rl60f8gr49z2mifxsrdh4y4yfdws467ya41gkmp1"))

(define rust-windows-i686-gnu-0.48.5
  (crate-source "windows_i686_gnu" "0.48.5"
                "0gklnglwd9ilqx7ac3cn8hbhkraqisd0n83jxzf9837nvvkiand7"))

(define rust-windows-i686-gnu-0.52.6
  (crate-source "windows_i686_gnu" "0.52.6"
                "02zspglbykh1jh9pi7gn8g1f97jh1rrccni9ivmrfbl0mgamm6wf"))

(define rust-windows-i686-gnu-0.53.1
  (crate-source "windows_i686_gnu" "0.53.1"
                "18wkcm82ldyg4figcsidzwbg1pqd49jpm98crfz0j7nqd6h6s3ln"))

(define rust-windows-i686-gnullvm-0.52.6
  (crate-source "windows_i686_gnullvm" "0.52.6"
                "0rpdx1537mw6slcpqa0rm3qixmsb79nbhqy5fsm3q2q9ik9m5vhf"))

(define rust-windows-i686-gnullvm-0.53.1
  (crate-source "windows_i686_gnullvm" "0.53.1"
                "030qaxqc4salz6l4immfb6sykc6gmhyir9wzn2w8mxj8038mjwzs"))

(define rust-windows-i686-msvc-0.48.5
  (crate-source "windows_i686_msvc" "0.48.5"
                "01m4rik437dl9rdf0ndnm2syh10hizvq0dajdkv2fjqcywrw4mcg"))

(define rust-windows-i686-msvc-0.52.6
  (crate-source "windows_i686_msvc" "0.52.6"
                "0rkcqmp4zzmfvrrrx01260q3xkpzi6fzi2x2pgdcdry50ny4h294"))

(define rust-windows-i686-msvc-0.53.1
  (crate-source "windows_i686_msvc" "0.53.1"
                "1hi6scw3mn2pbdl30ji5i4y8vvspb9b66l98kkz350pig58wfyhy"))

(define rust-windows-implement-0.56.0
  (crate-source "windows-implement" "0.56.0"
                "16rgkvlx4syqmajfdwmkcvn6nvh126wjj8sg3jvsk5fdivskbz7n"))

(define rust-windows-implement-0.60.2
  (crate-source "windows-implement" "0.60.2"
                "1psxhmklzcf3wjs4b8qb42qb6znvc142cb5pa74rsyxm1822wgh5"))

(define rust-windows-interface-0.56.0
  (crate-source "windows-interface" "0.56.0"
                "1k2prfxna0mw47f8gi8qhw9jfpw66bh2cqzs67sgipjfpx30b688"))

(define rust-windows-interface-0.59.3
  (crate-source "windows-interface" "0.59.3"
                "0n73cwrn4247d0axrk7gjp08p34x1723483jxjxjdfkh4m56qc9z"))

(define rust-windows-link-0.2.1
  (crate-source "windows-link" "0.2.1"
                "1rag186yfr3xx7piv5rg8b6im2dwcf8zldiflvb22xbzwli5507h"))

(define rust-windows-numerics-0.3.1
  (crate-source "windows-numerics" "0.3.1"
                "09hgbg8pf89r4090yyhh9q29ppi7yyxkgmga9ascshy19a240bkf"))

(define rust-windows-result-0.1.2
  (crate-source "windows-result" "0.1.2"
                "1y274q1v0vy21lhkgslpxpq1m08hvr1mcs2l88h1b1gcx0136f2y"))

(define rust-windows-result-0.4.1
  (crate-source "windows-result" "0.4.1"
                "1d9yhmrmmfqh56zlj751s5wfm9a2aa7az9rd7nn5027nxa4zm0bp"))

(define rust-windows-strings-0.5.1
  (crate-source "windows-strings" "0.5.1"
                "14bhng9jqv4fyl7lqjz3az7vzh8pw0w4am49fsqgcz67d67x0dvq"))

(define rust-windows-sys-0.48.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "windows-sys" "0.48.0"
                "1aan23v5gs7gya1lc46hqn9mdh8yph3fhxmhxlw36pn6pqc28zb7"))

(define rust-windows-sys-0.59.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "windows-sys" "0.59.0"
                "0fw5672ziw8b3zpmnbp9pdv1famk74f1l9fcbc3zsrzdg56vqf0y"))

(define rust-windows-sys-0.60.2
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "windows-sys" "0.60.2"
                "1jrbc615ihqnhjhxplr2kw7rasrskv9wj3lr80hgfd42sbj01xgj"))

(define rust-windows-sys-0.61.2
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "windows-sys" "0.61.2"
                "1z7k3y9b6b5h52kid57lvmvm05362zv1v8w0gc7xyv5xphlp44xf"))

(define rust-windows-targets-0.48.5
  (crate-source "windows-targets" "0.48.5"
                "034ljxqshifs1lan89xwpcy1hp0lhdh4b5n0d2z4fwjx2piacbws"))

(define rust-windows-targets-0.52.6
  (crate-source "windows-targets" "0.52.6"
                "0wwrx625nwlfp7k93r2rra568gad1mwd888h1jwnl0vfg5r4ywlv"))

(define rust-windows-targets-0.53.5
  (crate-source "windows-targets" "0.53.5"
                "1wv9j2gv3l6wj3gkw5j1kr6ymb5q6dfc42yvydjhv3mqa7szjia9"))

(define rust-windows-threading-0.2.1
  (crate-source "windows-threading" "0.2.1"
                "0dsvsy33vxs0153z4n39sqkzx382cjjkrd46rb3z3zfak5dvsj9r"))

(define rust-windows-x86-64-gnu-0.48.5
  (crate-source "windows_x86_64_gnu" "0.48.5"
                "13kiqqcvz2vnyxzydjh73hwgigsdr2z1xpzx313kxll34nyhmm2k"))

(define rust-windows-x86-64-gnu-0.52.6
  (crate-source "windows_x86_64_gnu" "0.52.6"
                "0y0sifqcb56a56mvn7xjgs8g43p33mfqkd8wj1yhrgxzma05qyhl"))

(define rust-windows-x86-64-gnu-0.53.1
  (crate-source "windows_x86_64_gnu" "0.53.1"
                "16d4yiysmfdlsrghndr97y57gh3kljkwhfdbcs05m1jasz6l4f4w"))

(define rust-windows-x86-64-gnullvm-0.48.5
  (crate-source "windows_x86_64_gnullvm" "0.48.5"
                "1k24810wfbgz8k48c2yknqjmiigmql6kk3knmddkv8k8g1v54yqb"))

(define rust-windows-x86-64-gnullvm-0.52.6
  (crate-source "windows_x86_64_gnullvm" "0.52.6"
                "03gda7zjx1qh8k9nnlgb7m3w3s1xkysg55hkd1wjch8pqhyv5m94"))

(define rust-windows-x86-64-gnullvm-0.53.1
  (crate-source "windows_x86_64_gnullvm" "0.53.1"
                "1qbspgv4g3q0vygkg8rnql5c6z3caqv38japiynyivh75ng1gyhg"))

(define rust-windows-x86-64-msvc-0.48.5
  (crate-source "windows_x86_64_msvc" "0.48.5"
                "0f4mdp895kkjh9zv8dxvn4pc10xr7839lf5pa9l0193i2pkgr57d"))

(define rust-windows-x86-64-msvc-0.52.6
  (crate-source "windows_x86_64_msvc" "0.52.6"
                "1v7rb5cibyzx8vak29pdrk8nx9hycsjs4w0jgms08qk49jl6v7sq"))

(define rust-windows-x86-64-msvc-0.53.1
  (crate-source "windows_x86_64_msvc" "0.53.1"
                "0l6npq76vlq4ksn4bwsncpr8508mk0gmznm6wnhjg95d19gzzfyn"))

(define rust-winnow-0.7.15
  (crate-source "winnow" "0.7.15"
                "0i9rkl2rqpbnnxlgs20gmkj3nd0b2k8q55mjmpc2ybb84xwxjyfz"))

(define rust-winnow-1.0.3
  (crate-source "winnow" "1.0.3"
                "1wajycd3krn6h699vydjv7hm0ll5l31p899qzpk59y2is74y34h5"))

(define rust-writeable-0.6.3
  (crate-source "writeable" "0.6.3"
                "1i54d13h9bpap2hf13xcry1s4lxh7ap3923g8f3c0grd7c9fbyhz"))

(define rust-x11-clipboard-0.8.1
  (crate-source "x11-clipboard" "0.8.1"
                "1ps0fk1912vzy382fc8l926q8w1l8bxmw72l3kr9bwdi2l8wl6ml"))

(define rust-x11rb-0.12.0
  (crate-source "x11rb" "0.12.0"
                "02h492k920mb1733cdmly138zfiwkspil6ssqcvi7inyshk1nr5i"))

(define rust-x11rb-protocol-0.12.0
  (crate-source "x11rb-protocol" "0.12.0"
                "1g24qdvq0mbyl2npz7zqy5v6hpdxq2qakkpnp3x02rzvl3ww7ml2"))

(define rust-xmlwriter-0.1.0
  (crate-source "xmlwriter" "0.1.0"
                "1fg0ldmkgiis6hnxpi1c9gy7v23y0lpi824bp8yp12fi3r82lypc"))

(define rust-xterm-query-0.5.2
  (crate-source "xterm-query" "0.5.2"
                "0cak14nd70qd99vrrikzaqlks6k8l7gyrbx7hz6lxpjg8ggk6b19"))

(define rust-xterm-query-0.6.0
  (crate-source "xterm-query" "0.6.0"
                "167c2lsnwanjnba7z39bdrs1in6cml9cy42lcp9armdk54qvls74"))

(define rust-yaml-rust-0.4.5
  (crate-source "yaml-rust" "0.4.5"
                "118wbqrr4n6wgk5rjjnlrdlahawlxc1bdsx146mwk8f79in97han"))

(define rust-yoke-0.8.3
  (crate-source "yoke" "0.8.3"
                "1xgyj6c2lxj2bp891ynmhws87c6z7yyv2li1v0ss9di40hxf57vh"))

(define rust-yoke-derive-0.8.2
  (crate-source "yoke-derive" "0.8.2"
                "13l5y5sz4lqm7rmyakjbh6vwgikxiql51xfff9hq2j485hk4r16y"))

(define rust-zerocopy-0.8.53
  (crate-source "zerocopy" "0.8.53"
                "1qcdv45iz4499bafwcnflvzf7adfvbnvgfc5w8cx8mk12d9n0wkm"))

(define rust-zerocopy-derive-0.8.53
  (crate-source "zerocopy-derive" "0.8.53"
                "0wgxvsnv44x5xdli270xh085458m76dkl0iqjpa3624hry9gs527"))

(define rust-zerofrom-0.1.8
  (crate-source "zerofrom" "0.1.8"
                "0wjjdj7gdmd0iq91gzkxl7dlv0nhkk80l4bmdpzh3a1yh48mmh0f"))

(define rust-zerofrom-derive-0.1.7
  (crate-source "zerofrom-derive" "0.1.7"
                "18c4wsnznhdxx6m80piil1lbyszdiwsshgjrybqcm4b6qic22lqi"))

(define rust-zerotrie-0.2.4
  (crate-source "zerotrie" "0.2.4"
                "1gr0pkcn3qsr6in6iixqyp0vbzwf2j1jzyvh7yl2yydh3p9m548g"))

(define rust-zerovec-0.11.6
  (crate-source "zerovec" "0.11.6"
                "0fdjsy6b31q9i0d73sl7xjd12xadbwi45lkpfgqnmasrqg5i3ych"))

(define rust-zerovec-derive-0.11.3
  (crate-source "zerovec-derive" "0.11.3"
                "0m85qj92mmfvhjra6ziqky5b1p4kcmp5069k7kfadp5hr8jw8pb2"))

(define rust-zmij-1.0.21
  (crate-source "zmij" "1.0.21"
                "1amb5i6gz7yjb0dnmz5y669674pqmwbj44p4yfxfv2ncgvk8x15q"))

(define rust-zune-bmp-0.4.0
  (crate-source "zune-bmp" "0.4.0"
                "03wcrvc3a5s2154bdp07mrsxghjpmc2nabghzh1a4jrlhj6ns79v"))

(define rust-zune-core-0.4.12
  (crate-source "zune-core" "0.4.12"
                "0jj1ra86klzlcj9aha9als9d1dzs7pqv3azs1j3n96822wn3lhiz"))

(define rust-zune-farbfeld-0.4.0
  (crate-source "zune-farbfeld" "0.4.0"
                "04gh23s72hz8gz80phk0ljf427ksi4hj8qx88hh5d72lh3569a7f"))

(define rust-zune-hdr-0.4.0
  (crate-source "zune-hdr" "0.4.0"
                "09k4d043n7dj99x5zy3arpkjvv82hyvvminvqspi82zq6534gzsi"))

(define rust-zune-image-0.4.15
  (crate-source "zune-image" "0.4.15"
                "0q829p18hrpqm04wr27zgrdvi6274qzv7xw8dr051in81yn9hsrx"))

(define rust-zune-inflate-0.2.54
  (crate-source "zune-inflate" "0.2.54"
                "00kg24jh3zqa3i6rg6yksnb71bch9yi1casqydl00s7nw8pk7avk"))

(define rust-zune-jpeg-0.4.21
  (crate-source "zune-jpeg" "0.4.21"
                "04r7g6y9jp7d4c9bq23rz3gwzlr1dsl7vdk4yly35bc4jf52rki9"))

(define rust-zune-jpegxl-0.4.0
  (crate-source "zune-jpegxl" "0.4.0"
                "0x1nkrxil53d3nxayflc3wzdd1m17zdvys27xncmzcc48d4fxzvi"))

(define rust-zune-png-0.4.10
  (crate-source "zune-png" "0.4.10"
                "02bmqybbma3b94m9sy6wbwvikh0a2a9z1458zvpjjvwwfs2w0abx"))

(define rust-zune-ppm-0.4.0
  (crate-source "zune-ppm" "0.4.0"
                "0x179gpzf85qkrw0dy81bgqm43z6asqv8xm51aqk8fry4d2yc9q5"))

(define rust-zune-psd-0.4.0
  (crate-source "zune-psd" "0.4.0"
                "0jadhgyjk0i3s5v347671wy77c7a8z34w3y2limj04qqc9fjf4db"))

(define rust-zune-qoi-0.4.10
  (crate-source "zune-qoi" "0.4.10"
                "1jg9hhj15zjwc8ycrmanl5an1d43vf6ps1xm7i0ldrgd55kqnnfw"))

(define zzzz-separator 'end-of-crates)

(define-cargo-inputs lookup-cargo-inputs
                     (broot =>
                            (list rust-adler2-2.0.1
                                  rust-ahash-0.8.12
                                  rust-aho-corasick-1.1.4
                                  rust-aligned-vec-0.6.4
                                  rust-allocator-api2-0.2.21
                                  rust-android-system-properties-0.1.5
                                  rust-anstream-1.0.0
                                  rust-anstyle-1.0.14
                                  rust-anstyle-parse-1.0.0
                                  rust-anstyle-query-1.1.5
                                  rust-anstyle-wincon-3.0.11
                                  rust-anyhow-1.0.103
                                  rust-arbitrary-1.4.2
                                  rust-arg-enum-proc-macro-0.3.4
                                  rust-argh-0.1.19
                                  rust-argh-derive-0.1.19
                                  rust-argh-shared-0.1.19
                                  rust-arrayref-0.3.9
                                  rust-arrayvec-0.7.8
                                  rust-autocfg-1.5.1
                                  rust-av1-grain-0.2.5
                                  rust-avif-serialize-0.8.9
                                  rust-base64-0.13.1
                                  rust-base64-0.22.1
                                  rust-bet-1.1.0
                                  rust-bincode-1.3.3
                                  rust-bit-set-0.5.3
                                  rust-bit-vec-0.6.3
                                  rust-bit-field-0.10.3
                                  rust-bitflags-1.3.2
                                  rust-bitflags-2.13.0
                                  rust-bitstream-io-2.6.0
                                  rust-block2-0.5.1
                                  rust-bstr-1.12.3
                                  rust-built-0.7.7
                                  rust-bumpalo-3.20.3
                                  rust-bytemuck-1.25.0
                                  rust-byteorder-lite-0.1.0
                                  rust-cc-1.2.66
                                  rust-cfg-expr-0.15.8
                                  rust-cfg-if-1.0.4
                                  rust-cfg-aliases-0.2.1
                                  rust-char-reader-0.1.1
                                  rust-chrono-0.4.45
                                  rust-clap-4.6.1
                                  rust-clap-help-1.6.0
                                  rust-clap-builder-4.6.0
                                  rust-clap-complete-4.6.7
                                  rust-clap-derive-4.6.1
                                  rust-clap-lex-1.1.0
                                  rust-clap-mangen-0.2.33
                                  rust-cli-log-2.1.0
                                  rust-clipboard-win-4.5.0
                                  rust-clipboard-macos-0.1.1
                                  rust-color-quant-1.1.0
                                  rust-colorchoice-1.0.5
                                  rust-convert-case-0.10.0
                                  rust-coolor-1.1.0
                                  rust-core-foundation-0.9.4
                                  rust-core-foundation-sys-0.8.7
                                  rust-core-maths-0.1.1
                                  rust-crc32fast-1.5.0
                                  rust-crokey-1.4.0
                                  rust-crokey-proc-macros-1.4.0
                                  rust-crossbeam-0.8.4
                                  rust-crossbeam-channel-0.5.16
                                  rust-crossbeam-deque-0.8.7
                                  rust-crossbeam-epoch-0.9.20
                                  rust-crossbeam-queue-0.3.13
                                  rust-crossbeam-utils-0.8.22
                                  rust-crossterm-0.28.1
                                  rust-crossterm-0.29.0
                                  rust-crossterm-winapi-0.9.1
                                  rust-crunchy-0.2.4
                                  rust-csv-1.4.0
                                  rust-csv-core-0.1.13
                                  rust-csv2svg-0.2.3
                                  rust-custom-error-1.9.2
                                  rust-data-url-0.3.2
                                  rust-deranged-0.5.8
                                  rust-derive-more-2.1.1
                                  rust-derive-more-impl-2.1.1
                                  rust-deser-hjson-2.2.6
                                  rust-directories-4.0.1
                                  rust-directories-5.0.1
                                  rust-dirs-sys-0.3.7
                                  rust-dirs-sys-0.4.1
                                  rust-displaydoc-0.2.6
                                  rust-doc-comment-0.3.4
                                  rust-document-features-0.2.12
                                  rust-either-1.16.0
                                  rust-equator-0.4.2
                                  rust-equator-macro-0.4.2
                                  rust-equivalent-1.0.2
                                  rust-errno-0.3.14
                                  rust-error-code-2.3.1
                                  rust-euclid-0.22.14
                                  rust-exr-1.74.1
                                  rust-fallible-iterator-0.3.0
                                  rust-fallible-streaming-iterator-0.1.9
                                  rust-fancy-regex-0.11.0
                                  rust-fastrand-2.4.1
                                  rust-fdeflate-0.3.7
                                  rust-file-size-1.0.3
                                  rust-find-msvc-tools-0.1.9
                                  rust-flate2-1.1.9
                                  rust-flex-grow-0.1.0
                                  rust-float-cmp-0.9.0
                                  rust-fnv-1.0.7
                                  rust-foldhash-0.2.0
                                  rust-fontconfig-parser-0.5.8
                                  rust-fontdb-0.23.0
                                  rust-form-urlencoded-1.2.2
                                  rust-fsevent-sys-4.1.0
                                  rust-futures-core-0.3.32
                                  rust-futures-task-0.3.32
                                  rust-futures-util-0.3.32
                                  rust-gethostname-0.3.0
                                  rust-getrandom-0.2.17
                                  rust-getrandom-0.4.3
                                  rust-gif-0.13.3
                                  rust-git2-0.20.4
                                  rust-glassbench-0.4.4
                                  rust-glob-0.3.3
                                  rust-half-2.7.1
                                  rust-hashbrown-0.14.5
                                  rust-hashbrown-0.16.1
                                  rust-hashbrown-0.17.1
                                  rust-hashlink-0.9.1
                                  rust-heck-0.4.1
                                  rust-heck-0.5.0
                                  rust-iana-time-zone-0.1.65
                                  rust-iana-time-zone-haiku-0.1.2
                                  rust-icu-collections-2.2.0
                                  rust-icu-locale-core-2.2.0
                                  rust-icu-normalizer-2.2.0
                                  rust-icu-normalizer-data-2.2.0
                                  rust-icu-properties-2.2.0
                                  rust-icu-properties-data-2.2.0
                                  rust-icu-provider-2.2.0
                                  rust-id-arena-2.3.0
                                  rust-idna-1.1.0
                                  rust-idna-adapter-1.2.2
                                  rust-image-0.25.6
                                  rust-image-webp-0.2.4
                                  rust-imagesize-0.13.0
                                  rust-imgref-1.12.2
                                  rust-include-dir-0.7.4
                                  rust-include-dir-macros-0.7.4
                                  rust-indexmap-2.14.0
                                  rust-inotify-0.11.4
                                  rust-inotify-sys-0.1.8
                                  rust-interpolate-name-0.2.4
                                  rust-io-kit-sys-0.4.1
                                  rust-is-executable-1.0.6
                                  rust-is-terminal-polyfill-1.70.2
                                  rust-itertools-0.12.1
                                  rust-itoa-1.0.18
                                  rust-jobserver-0.1.35
                                  rust-jpeg-decoder-0.3.2
                                  rust-jpeg-encoder-0.5.1
                                  rust-js-sys-0.3.103
                                  rust-jxl-bitstream-0.2.3
                                  rust-jxl-coding-0.2.3
                                  rust-jxl-color-0.3.2
                                  rust-jxl-frame-0.5.0
                                  rust-jxl-grid-0.1.1
                                  rust-jxl-image-0.5.0
                                  rust-jxl-modular-0.3.0
                                  rust-jxl-oxide-0.4.0
                                  rust-jxl-render-0.4.0
                                  rust-jxl-vardct-0.3.0
                                  rust-kamadak-exif-0.5.5
                                  rust-kqueue-1.2.0
                                  rust-kqueue-sys-1.1.2
                                  rust-kurbo-0.11.3
                                  rust-lazy-regex-3.6.0
                                  rust-lazy-regex-proc-macros-3.6.0
                                  rust-lazy-static-1.5.0
                                  rust-lebe-0.5.3
                                  rust-lfs-core-0.17.0
                                  rust-libc-0.2.186
                                  rust-libfuzzer-sys-0.4.13
                                  rust-libgit2-sys-0.18.5+1.9.4
                                  rust-libm-0.2.16
                                  rust-libredox-0.1.18
                                  rust-libsqlite3-sys-0.30.1
                                  rust-libz-sys-1.1.29
                                  rust-linked-hash-map-0.5.6
                                  rust-linux-raw-sys-0.4.15
                                  rust-linux-raw-sys-0.12.1
                                  rust-litemap-0.8.2
                                  rust-litrs-1.0.0
                                  rust-lock-api-0.4.14
                                  rust-log-0.4.33
                                  rust-loop9-0.1.5
                                  rust-lru-0.16.4
                                  rust-mach2-0.4.3
                                  rust-maybe-rayon-0.1.1
                                  rust-memchr-2.8.3
                                  rust-memmap2-0.9.11
                                  rust-memoffset-0.7.1
                                  rust-minimad-0.13.1
                                  rust-minimad-0.16.0
                                  rust-miniz-oxide-0.8.9
                                  rust-mio-1.2.1
                                  rust-mutate-once-0.1.2
                                  rust-new-debug-unreachable-1.0.6
                                  rust-nix-0.26.4
                                  rust-nix-0.29.0
                                  rust-nix-0.31.3
                                  rust-nom-8.0.0
                                  rust-noop-proc-macro-0.3.0
                                  rust-normpath-1.5.1
                                  rust-notify-8.2.0
                                  rust-notify-types-2.1.0
                                  rust-num-bigint-0.4.8
                                  rust-num-complex-0.4.6
                                  rust-num-conv-0.2.2
                                  rust-num-derive-0.4.2
                                  rust-num-integer-0.1.46
                                  rust-num-rational-0.4.2
                                  rust-num-traits-0.2.19
                                  rust-objc-sys-0.3.5
                                  rust-objc2-0.5.2
                                  rust-objc2-app-kit-0.2.2
                                  rust-objc2-core-data-0.2.2
                                  rust-objc2-core-image-0.2.2
                                  rust-objc2-encode-4.1.0
                                  rust-objc2-foundation-0.2.2
                                  rust-objc2-metal-0.2.2
                                  rust-objc2-quartz-core-0.2.2
                                  rust-once-cell-1.21.4
                                  rust-once-cell-polyfill-1.70.2
                                  rust-open-1.7.1
                                  rust-opener-0.8.5
                                  rust-option-ext-0.2.0
                                  rust-parking-lot-0.12.5
                                  rust-parking-lot-core-0.9.12
                                  rust-paste-1.0.15
                                  rust-pathdiff-0.2.3
                                  rust-percent-encoding-2.3.2
                                  rust-phf-0.13.1
                                  rust-phf-generator-0.13.1
                                  rust-phf-macros-0.13.1
                                  rust-phf-shared-0.13.1
                                  rust-pico-args-0.5.0
                                  rust-pin-project-lite-0.2.17
                                  rust-pkg-config-0.3.33
                                  rust-plist-1.10.0
                                  rust-png-0.17.16
                                  rust-potential-utf-0.1.5
                                  rust-powerfmt-0.2.0
                                  rust-ppv-lite86-0.2.21
                                  rust-proc-macro2-1.0.106
                                  rust-proc-status-0.1.1
                                  rust-profiling-1.0.18
                                  rust-profiling-procmacros-1.0.18
                                  rust-pulp-0.22.3
                                  rust-pulp-wasm-simd-flag-0.1.1
                                  rust-qoi-0.4.1
                                  rust-quick-error-2.0.1
                                  rust-quick-xml-0.41.0
                                  rust-quote-1.0.46
                                  rust-r-efi-6.0.0
                                  rust-rand-0.8.6
                                  rust-rand-chacha-0.3.1
                                  rust-rand-core-0.6.4
                                  rust-rav1e-0.7.1
                                  rust-ravif-0.11.20
                                  rust-raw-cpuid-11.6.0
                                  rust-rayon-1.12.0
                                  rust-rayon-core-1.13.0
                                  rust-reborrow-0.5.5
                                  rust-redox-syscall-0.5.18
                                  rust-redox-users-0.4.6
                                  rust-regex-1.12.4
                                  rust-regex-automata-0.4.14
                                  rust-regex-syntax-0.8.11
                                  rust-resvg-0.45.1
                                  rust-rgb-0.8.53
                                  rust-roff-1.1.1
                                  rust-roxmltree-0.20.0
                                  rust-rusqlite-0.32.1
                                  rust-rustc-hash-2.1.3
                                  rust-rustc-version-0.4.1
                                  rust-rustix-0.38.44
                                  rust-rustix-1.1.4
                                  rust-rustversion-1.0.23
                                  rust-rustybuzz-0.20.1
                                  rust-ryu-1.0.23
                                  rust-same-file-1.0.6
                                  rust-scopeguard-1.2.0
                                  rust-secular-1.0.1
                                  rust-semver-1.0.28
                                  rust-serde-1.0.228
                                  rust-serde-core-1.0.228
                                  rust-serde-derive-1.0.228
                                  rust-serde-json-1.0.150
                                  rust-serde-spanned-0.6.9
                                  rust-serde-spanned-1.1.1
                                  rust-shlex-2.0.1
                                  rust-signal-hook-0.3.18
                                  rust-signal-hook-mio-0.2.5
                                  rust-signal-hook-registry-1.4.8
                                  rust-simd-adler32-0.3.9
                                  rust-simd-helpers-0.1.0
                                  rust-simplecss-0.2.2
                                  rust-siphasher-1.0.3
                                  rust-slab-0.4.12
                                  rust-slotmap-1.1.1
                                  rust-smallvec-1.15.2
                                  rust-snafu-0.7.5
                                  rust-snafu-derive-0.7.5
                                  rust-splitty-1.0.2
                                  rust-stable-deref-trait-1.2.1
                                  rust-str-buf-1.0.6
                                  rust-strict-0.2.0
                                  rust-strict-num-0.1.1
                                  rust-strsim-0.11.1
                                  rust-svg-0.16.0
                                  rust-svgtypes-0.15.3
                                  rust-syn-1.0.109
                                  rust-syn-2.0.118
                                  rust-synstructure-0.13.2
                                  rust-syntect-no-panic-6.0.0
                                  rust-system-deps-6.2.2
                                  rust-target-lexicon-0.12.16
                                  rust-tempfile-3.27.0
                                  rust-termimad-0.31.3
                                  rust-termimad-0.35.0
                                  rust-terminal-clipboard-0.4.1
                                  rust-terminal-light-1.9.0
                                  rust-termux-clipboard-0.1.0
                                  rust-thiserror-1.0.69
                                  rust-thiserror-2.0.18
                                  rust-thiserror-impl-1.0.69
                                  rust-thiserror-impl-2.0.18
                                  rust-tiff-0.9.1
                                  rust-time-0.3.53
                                  rust-time-core-0.1.9
                                  rust-time-macros-0.2.31
                                  rust-tiny-skia-0.11.4
                                  rust-tiny-skia-path-0.11.4
                                  rust-tinystr-0.8.3
                                  rust-tinyvec-1.11.0
                                  rust-tinyvec-macros-0.1.1
                                  rust-toml-0.8.23
                                  rust-toml-0.9.12+spec-1.1.0
                                  rust-toml-datetime-0.6.11
                                  rust-toml-datetime-0.7.5+spec-1.1.0
                                  rust-toml-edit-0.22.27
                                  rust-toml-parser-1.1.2+spec-1.1.0
                                  rust-toml-writer-1.1.1+spec-1.1.0
                                  rust-tracing-0.1.44
                                  rust-tracing-core-0.1.36
                                  rust-trash-5.2.2
                                  rust-ttf-parser-0.25.1
                                  rust-umask-2.1.0
                                  rust-unicode-bidi-0.3.18
                                  rust-unicode-bidi-mirroring-0.4.0
                                  rust-unicode-ccc-0.4.0
                                  rust-unicode-ident-1.0.24
                                  rust-unicode-normalization-0.1.25
                                  rust-unicode-properties-0.1.4
                                  rust-unicode-script-0.5.8
                                  rust-unicode-segmentation-1.13.3
                                  rust-unicode-vo-0.1.0
                                  rust-unicode-width-0.1.14
                                  rust-unicode-width-0.2.2
                                  rust-url-2.5.8
                                  rust-urlencoding-2.1.3
                                  rust-usvg-0.45.1
                                  rust-utf8-iter-1.0.4
                                  rust-utf8parse-0.2.2
                                  rust-uzers-0.12.2
                                  rust-v-frame-0.3.9
                                  rust-vcpkg-0.2.15
                                  rust-version-compare-0.2.1
                                  rust-version-check-0.9.5
                                  rust-vte-0.15.0
                                  rust-walkdir-2.5.0
                                  rust-wasi-0.11.1+wasi-snapshot-preview1
                                  rust-wasm-bindgen-0.2.126
                                  rust-wasm-bindgen-macro-0.2.126
                                  rust-wasm-bindgen-macro-support-0.2.126
                                  rust-wasm-bindgen-shared-0.2.126
                                  rust-weezl-0.1.12
                                  rust-which-4.4.0
                                  rust-winapi-0.3.9
                                  rust-winapi-i686-pc-windows-gnu-0.4.0
                                  rust-winapi-util-0.1.11
                                  rust-winapi-wsapoll-0.1.2
                                  rust-winapi-x86-64-pc-windows-gnu-0.4.0
                                  rust-windows-0.56.0
                                  rust-windows-0.62.2
                                  rust-windows-collections-0.3.2
                                  rust-windows-core-0.56.0
                                  rust-windows-core-0.62.2
                                  rust-windows-future-0.3.2
                                  rust-windows-implement-0.56.0
                                  rust-windows-implement-0.60.2
                                  rust-windows-interface-0.56.0
                                  rust-windows-interface-0.59.3
                                  rust-windows-link-0.2.1
                                  rust-windows-numerics-0.3.1
                                  rust-windows-result-0.1.2
                                  rust-windows-result-0.4.1
                                  rust-windows-strings-0.5.1
                                  rust-windows-sys-0.48.0
                                  rust-windows-sys-0.59.0
                                  rust-windows-sys-0.60.2
                                  rust-windows-sys-0.61.2
                                  rust-windows-targets-0.48.5
                                  rust-windows-targets-0.52.6
                                  rust-windows-targets-0.53.5
                                  rust-windows-threading-0.2.1
                                  rust-windows-aarch64-gnullvm-0.48.5
                                  rust-windows-aarch64-gnullvm-0.52.6
                                  rust-windows-aarch64-gnullvm-0.53.1
                                  rust-windows-aarch64-msvc-0.48.5
                                  rust-windows-aarch64-msvc-0.52.6
                                  rust-windows-aarch64-msvc-0.53.1
                                  rust-windows-i686-gnu-0.48.5
                                  rust-windows-i686-gnu-0.52.6
                                  rust-windows-i686-gnu-0.53.1
                                  rust-windows-i686-gnullvm-0.52.6
                                  rust-windows-i686-gnullvm-0.53.1
                                  rust-windows-i686-msvc-0.48.5
                                  rust-windows-i686-msvc-0.52.6
                                  rust-windows-i686-msvc-0.53.1
                                  rust-windows-x86-64-gnu-0.48.5
                                  rust-windows-x86-64-gnu-0.52.6
                                  rust-windows-x86-64-gnu-0.53.1
                                  rust-windows-x86-64-gnullvm-0.48.5
                                  rust-windows-x86-64-gnullvm-0.52.6
                                  rust-windows-x86-64-gnullvm-0.53.1
                                  rust-windows-x86-64-msvc-0.48.5
                                  rust-windows-x86-64-msvc-0.52.6
                                  rust-windows-x86-64-msvc-0.53.1
                                  rust-winnow-0.7.15
                                  rust-winnow-1.0.3
                                  rust-writeable-0.6.3
                                  rust-x11-clipboard-0.8.1
                                  rust-x11rb-0.12.0
                                  rust-x11rb-protocol-0.12.0
                                  rust-xmlwriter-0.1.0
                                  rust-xterm-query-0.5.2
                                  rust-xterm-query-0.6.0
                                  rust-yaml-rust-0.4.5
                                  rust-yoke-0.8.3
                                  rust-yoke-derive-0.8.2
                                  rust-zerocopy-0.8.53
                                  rust-zerocopy-derive-0.8.53
                                  rust-zerofrom-0.1.8
                                  rust-zerofrom-derive-0.1.7
                                  rust-zerotrie-0.2.4
                                  rust-zerovec-0.11.6
                                  rust-zerovec-derive-0.11.3
                                  rust-zmij-1.0.21
                                  rust-zune-bmp-0.4.0
                                  rust-zune-core-0.4.12
                                  rust-zune-farbfeld-0.4.0
                                  rust-zune-hdr-0.4.0
                                  rust-zune-image-0.4.15
                                  rust-zune-inflate-0.2.54
                                  rust-zune-jpeg-0.4.21
                                  rust-zune-jpegxl-0.4.0
                                  rust-zune-png-0.4.10
                                  rust-zune-ppm-0.4.0
                                  rust-zune-psd-0.4.0
                                  rust-zune-qoi-0.4.10)))
