# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit systemd go-module desktop xdg git-r3

DESCRIPTION="web GUI of Project V which supports V2Ray, Xray, SS, SSR, Trojan and Pingtunnel"
HOMEPAGE="
	https://v2raya.org/
"

EGIT_REPO_URI="https://github.com/v2rayA/v2rayA.git"
# sed -re 's/^(\S*) (\S*) (\S*)/"\1 \2"/g' go.sum
# echo "goproxy https://goproxy.cn/" >> /etc/portage/mirrors
EGO_SUM=(
	"cloud.google.com/go v0.26.0/go.mod"
	"cloud.google.com/go v0.34.0/go.mod"
	"github.com/BurntSushi/toml v0.3.1"
	"github.com/BurntSushi/toml v0.3.1/go.mod"
	"github.com/OneOfOne/xxhash v1.2.2/go.mod"
	"github.com/PuerkitoBio/goquery v1.5.1/go.mod"
	"github.com/adrg/xdg v0.4.0"
	"github.com/adrg/xdg v0.4.0/go.mod"
	"github.com/andybalholm/brotli v1.0.4"
	"github.com/andybalholm/cascadia v1.1.0/go.mod"
	"github.com/antihax/optional v1.0.0/go.mod"
	"github.com/axgle/mahonia v0.0.0-20180208002826-3358181d7394/go.mod"
	"github.com/beevik/ntp v0.3.0"
	"github.com/beevik/ntp v0.3.0/go.mod"
	"github.com/bool64/dev v0.2.5"
	"github.com/census-instrumentation/opencensus-proto v0.2.1/go.mod"
	"github.com/cespare/xxhash v1.1.0/go.mod"
	"github.com/cheekybits/genny v1.0.0"
	"github.com/client9/misspell v0.3.4/go.mod"
	"github.com/cncf/udpa/go v0.0.0-20191209042840-269d4d468f6f/go.mod"
	"github.com/cncf/udpa/go v0.0.0-20201120205902-5459f2c99403/go.mod"
	"github.com/cncf/xds/go v0.0.0-20210312221358-fbca930ec8ed/go.mod"
	"github.com/creack/pty v1.1.9/go.mod"
	"github.com/davecgh/go-spew v1.1.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/devfeel/mapper v0.7.5"
	"github.com/devfeel/mapper v0.7.5/go.mod"
	"github.com/dgrijalva/jwt-go/v4 v4.0.0-preview1"
	"github.com/dgrijalva/jwt-go/v4 v4.0.0-preview1/go.mod"
	"github.com/dgryski/go-camellia v0.0.0-20191119043421-69a8a13fb23d"
	"github.com/dgryski/go-camellia v0.0.0-20191119043421-69a8a13fb23d/go.mod"
	"github.com/dgryski/go-idea v0.0.0-20170306091226-d2fb45a411fb"
	"github.com/dgryski/go-idea v0.0.0-20170306091226-d2fb45a411fb/go.mod"
	"github.com/dgryski/go-metro v0.0.0-20200812162917-85c65e2d0165"
	"github.com/dgryski/go-rc2 v0.0.0-20150621095337-8a9021637152"
	"github.com/dgryski/go-rc2 v0.0.0-20150621095337-8a9021637152/go.mod"
	"github.com/dvyukov/go-fuzz v0.0.0-20210103155950-6a8e9d1f2415/go.mod"
	"github.com/ebfe/bcrypt_pbkdf v0.0.0-20140212075826-3c8d2dcb253a"
	"github.com/ebfe/rc2 v0.0.0-20131011165748-24b9757f5521"
	"github.com/ebfe/rc2 v0.0.0-20131011165748-24b9757f5521/go.mod"
	"github.com/envoyproxy/go-control-plane v0.9.0/go.mod"
	"github.com/envoyproxy/go-control-plane v0.9.1-0.20191026205805-5f8ba28d4473/go.mod"
	"github.com/envoyproxy/go-control-plane v0.9.4/go.mod"
	"github.com/envoyproxy/go-control-plane v0.9.9-0.20201210154907-fd9021fe5dad/go.mod"
	"github.com/envoyproxy/go-control-plane v0.9.9-0.20210512163311-63b5d3c536b0/go.mod"
	"github.com/envoyproxy/protoc-gen-validate v0.1.0/go.mod"
	"github.com/fsnotify/fsnotify v1.4.9"
	"github.com/ghodss/yaml v1.0.0/go.mod"
	"github.com/gin-contrib/cors v1.3.1"
	"github.com/gin-contrib/cors v1.3.1/go.mod"
	"github.com/gin-contrib/sse v0.1.0"
	"github.com/gin-contrib/sse v0.1.0/go.mod"
	"github.com/gin-gonic/gin v1.5.0/go.mod"
	"github.com/gin-gonic/gin v1.7.1"
	"github.com/gin-gonic/gin v1.7.1/go.mod"
	"github.com/go-chi/chi/v5 v5.0.4"
	"github.com/go-chi/render v1.0.1"
	"github.com/go-gitea/bolt v0.0.0-20170420010917-ccd680d8c1a0"
	"github.com/go-gitea/bolt v0.0.0-20170420010917-ccd680d8c1a0/go.mod"
	"github.com/go-ole/go-ole v1.2.6"
	"github.com/go-ole/go-ole v1.2.6/go.mod"
	"github.com/go-playground/assert/v2 v2.0.1"
	"github.com/go-playground/assert/v2 v2.0.1/go.mod"
	"github.com/go-playground/locales v0.12.1/go.mod"
	"github.com/go-playground/locales v0.13.0/go.mod"
	"github.com/go-playground/locales v0.14.0"
	"github.com/go-playground/locales v0.14.0/go.mod"
	"github.com/go-playground/universal-translator v0.16.0/go.mod"
	"github.com/go-playground/universal-translator v0.17.0/go.mod"
	"github.com/go-playground/universal-translator v0.18.0"
	"github.com/go-playground/universal-translator v0.18.0/go.mod"
	"github.com/go-playground/validator/v10 v10.4.1/go.mod"
	"github.com/go-playground/validator/v10 v10.9.0"
	"github.com/go-playground/validator/v10 v10.9.0/go.mod"
	"github.com/go-sql-driver/mysql v1.5.0/go.mod"
	"github.com/go-task/slim-sprig v0.0.0-20210107165309-348f09dbbbc0"
	"github.com/gocarina/gocsv v0.0.0-20201103164230-b291445e0dd2/go.mod"
	"github.com/gocarina/gocsv v0.0.0-20210408192840-02d7211d929d"
	"github.com/gocarina/gocsv v0.0.0-20210408192840-02d7211d929d/go.mod"
	"github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b/go.mod"
	"github.com/golang/mock v1.1.1/go.mod"
	"github.com/golang/mock v1.6.0"
	"github.com/golang/protobuf v1.2.0/go.mod"
	"github.com/golang/protobuf v1.3.2/go.mod"
	"github.com/golang/protobuf v1.3.3/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.1/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.1.0.20200221234624-67d41d38c208/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.2/go.mod"
	"github.com/golang/protobuf v1.4.0-rc.4.0.20200313231945-b860323f09d0/go.mod"
	"github.com/golang/protobuf v1.4.0/go.mod"
	"github.com/golang/protobuf v1.4.1/go.mod"
	"github.com/golang/protobuf v1.4.2/go.mod"
	"github.com/golang/protobuf v1.4.3/go.mod"
	"github.com/golang/protobuf v1.5.0/go.mod"
	"github.com/golang/protobuf v1.5.2"
	"github.com/golang/protobuf v1.5.2/go.mod"
	"github.com/google/go-cmp v0.2.0/go.mod"
	"github.com/google/go-cmp v0.3.0/go.mod"
	"github.com/google/go-cmp v0.3.1/go.mod"
	"github.com/google/go-cmp v0.4.0/go.mod"
	"github.com/google/go-cmp v0.5.0/go.mod"
	"github.com/google/go-cmp v0.5.5/go.mod"
	"github.com/google/go-cmp v0.5.6"
	"github.com/google/go-cmp v0.5.6/go.mod"
	"github.com/google/gofuzz v1.0.0/go.mod"
	"github.com/google/gopacket v1.1.19"
	"github.com/google/gopacket v1.1.19/go.mod"
	"github.com/google/uuid v1.1.1/go.mod"
	"github.com/google/uuid v1.1.2"
	"github.com/google/uuid v1.1.2/go.mod"
	"github.com/gorilla/websocket v1.4.2"
	"github.com/gorilla/websocket v1.4.2/go.mod"
	"github.com/grpc-ecosystem/grpc-gateway v1.16.0/go.mod"
	"github.com/jhump/protoreflect v1.9.0"
	"github.com/json-iterator/go v1.1.7/go.mod"
	"github.com/json-iterator/go v1.1.9/go.mod"
	"github.com/json-iterator/go v1.1.11"
	"github.com/json-iterator/go v1.1.11/go.mod"
	"github.com/kr/pretty v0.1.0/go.mod"
	"github.com/kr/pretty v0.2.1/go.mod"
	"github.com/kr/pretty v0.3.0"
	"github.com/kr/pretty v0.3.0/go.mod"
	"github.com/kr/pty v1.1.1/go.mod"
	"github.com/kr/text v0.1.0/go.mod"
	"github.com/kr/text v0.2.0"
	"github.com/kr/text v0.2.0/go.mod"
	"github.com/leodido/go-urn v1.1.0/go.mod"
	"github.com/leodido/go-urn v1.2.0/go.mod"
	"github.com/leodido/go-urn v1.2.1"
	"github.com/leodido/go-urn v1.2.1/go.mod"
	"github.com/lucas-clemente/quic-go v0.23.0"
	"github.com/lufia/plan9stats v0.0.0-20211012122336-39d0f177ccd0"
	"github.com/lufia/plan9stats v0.0.0-20211012122336-39d0f177ccd0/go.mod"
	"github.com/lunixbochs/struc v0.0.0-20200707160740-784aaebc1d40"
	"github.com/marten-seemann/qtls-go1-16 v0.1.4"
	"github.com/marten-seemann/qtls-go1-17 v0.1.0"
	"github.com/matoous/go-nanoid v1.5.0"
	"github.com/matoous/go-nanoid v1.5.0/go.mod"
	"github.com/mattn/go-isatty v0.0.9/go.mod"
	"github.com/mattn/go-isatty v0.0.12"
	"github.com/mattn/go-isatty v0.0.12/go.mod"
	"github.com/mattn/go-sqlite3 v2.0.3+incompatible/go.mod"
	"github.com/modern-go/concurrent v0.0.0-20180228061459-e0a39a4cb421"
	"github.com/modern-go/concurrent v0.0.0-20180228061459-e0a39a4cb421/go.mod"
	"github.com/modern-go/reflect2 v0.0.0-20180701023420-4b7aa43c6742"
	"github.com/modern-go/reflect2 v0.0.0-20180701023420-4b7aa43c6742/go.mod"
	"github.com/mohae/deepcopy v0.0.0-20170929034955-c48cc78d4826"
	"github.com/mohae/deepcopy v0.0.0-20170929034955-c48cc78d4826/go.mod"
	"github.com/muhammadmuzzammil1998/jsonc v0.0.0-20201229145248-615b0916ca38"
	"github.com/muhammadmuzzammil1998/jsonc v0.0.0-20201229145248-615b0916ca38/go.mod"
	"github.com/mzz2017/go-engine v0.0.0-20200509094339-b56921189229"
	"github.com/mzz2017/go-engine v0.0.0-20200509094339-b56921189229/go.mod"
	"github.com/niemeyer/pretty v0.0.0-20200227124842-a10e7caefd8e/go.mod"
	"github.com/nxadm/tail v1.4.8"
	"github.com/onsi/ginkgo v1.16.4"
	"github.com/oschwald/geoip2-golang v1.4.0/go.mod"
	"github.com/oschwald/maxminddb-golang v1.6.0/go.mod"
	"github.com/pelletier/go-toml v1.2.0"
	"github.com/pelletier/go-toml v1.2.0/go.mod"
	"github.com/pires/go-proxyproto v0.6.1"
	"github.com/pires/go-proxyproto v0.6.1/go.mod"
	"github.com/pkg/diff v0.0.0-20210226163009-20ebb0f2a09e/go.mod"
	"github.com/pkg/errors v0.9.1"
	"github.com/pkg/errors v0.9.1/go.mod"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/power-devops/perfstat v0.0.0-20210106213030-5aafc221ea8c"
	"github.com/power-devops/perfstat v0.0.0-20210106213030-5aafc221ea8c/go.mod"
	"github.com/prometheus/client_model v0.0.0-20190812154241-14fe0d1b01d4/go.mod"
	"github.com/riobard/go-bloom v0.0.0-20200614022211-cdc8013cb5b3"
	"github.com/riobard/go-bloom v0.0.0-20200614022211-cdc8013cb5b3/go.mod"
	"github.com/rogpeppe/fastuuid v1.2.0/go.mod"
	"github.com/rogpeppe/go-internal v1.6.1/go.mod"
	"github.com/rogpeppe/go-internal v1.8.0"
	"github.com/rogpeppe/go-internal v1.8.0/go.mod"
	"github.com/seiflotfy/cuckoofilter v0.0.0-20201222105146-bc6005554a0c"
	"github.com/shadowsocks/go-shadowsocks2 v0.1.5"
	"github.com/shadowsocks/go-shadowsocks2 v0.1.5/go.mod"
	"github.com/shiena/ansicolor v0.0.0-20200904210342-c7312218db18"
	"github.com/shiena/ansicolor v0.0.0-20200904210342-c7312218db18/go.mod"
	"github.com/shirou/gopsutil/v3 v3.21.11"
	"github.com/shirou/gopsutil/v3 v3.21.11/go.mod"
	"github.com/shiyanhui/dht v0.0.0-20190320084728-1b3b78ecf279/go.mod"
	"github.com/sirupsen/logrus v1.8.1"
	"github.com/sirupsen/logrus v1.8.1/go.mod"
	"github.com/spaolacci/murmur3 v0.0.0-20180118202830-f09979ecbc72/go.mod"
	"github.com/stevenroose/gonfig v0.1.5"
	"github.com/stevenroose/gonfig v0.1.5/go.mod"
	"github.com/stretchr/objx v0.1.0/go.mod"
	"github.com/stretchr/testify v1.2.2/go.mod"
	"github.com/stretchr/testify v1.3.0/go.mod"
	"github.com/stretchr/testify v1.4.0/go.mod"
	"github.com/stretchr/testify v1.5.1/go.mod"
	"github.com/stretchr/testify v1.6.1/go.mod"
	"github.com/stretchr/testify v1.7.0"
	"github.com/stretchr/testify v1.7.0/go.mod"
	"github.com/tidwall/gjson v1.10.2"
	"github.com/tidwall/gjson v1.10.2/go.mod"
	"github.com/tidwall/match v1.1.1"
	"github.com/tidwall/match v1.1.1/go.mod"
	"github.com/tidwall/pretty v1.2.0"
	"github.com/tidwall/pretty v1.2.0/go.mod"
	"github.com/tidwall/sjson v1.2.3"
	"github.com/tidwall/sjson v1.2.3/go.mod"
	"github.com/tklauser/go-sysconf v0.3.9/go.mod"
	"github.com/tklauser/numcpus v0.3.0/go.mod"
	"github.com/ugorji/go v1.1.7/go.mod"
	"github.com/ugorji/go/codec v1.1.7"
	"github.com/ugorji/go/codec v1.1.7/go.mod"
	"github.com/v2fly/BrowserBridge v0.0.0-20210430233438-0570fc1d7d08"
	"github.com/v2fly/VSign v0.0.0-20201108000810-e2adc24bf848"
	"github.com/v2fly/ss-bloomring v0.0.0-20210312155135-28617310f63e"
	"github.com/v2fly/v2ray-core/v4 v4.42.2-0.20210928173456-a9979057dcaa"
	"github.com/v2fly/v2ray-core/v4 v4.42.2-0.20210928173456-a9979057dcaa/go.mod"
	"github.com/v2rayA/RoutingA v1.0.1"
	"github.com/v2rayA/RoutingA v1.0.1/go.mod"
	"github.com/v2rayA/beego/v2 v2.0.4"
	"github.com/v2rayA/beego/v2 v2.0.4/go.mod"
	"github.com/v2rayA/shadowsocksR v1.0.4"
	"github.com/v2rayA/shadowsocksR v1.0.4/go.mod"
	"github.com/v2rayA/v2ray-lib v0.0.0-20211227083129-d4f59fbf62b8"
	"github.com/v2rayA/v2ray-lib v0.0.0-20211227083129-d4f59fbf62b8/go.mod"
	"github.com/vearutop/statigz v1.1.7"
	"github.com/vearutop/statigz v1.1.7/go.mod"
	"github.com/xtaci/smux v1.5.15"
	"github.com/yuin/goldmark v1.2.1/go.mod"
	"github.com/yusufpapurcu/wmi v1.2.2"
	"github.com/yusufpapurcu/wmi v1.2.2/go.mod"
	"gitlab.com/yawning/chacha20.git v0.0.0-20190903091407-6d1cb28dc72c"
	"gitlab.com/yawning/chacha20.git v0.0.0-20190903091407-6d1cb28dc72c/go.mod"
	"go.opentelemetry.io/proto/otlp v0.7.0/go.mod"
	"go.starlark.net v0.0.0-20210901212718-87f333178d59"
	"go4.org/intern v0.0.0-20211027215823-ae77deb06f29"
	"go4.org/intern v0.0.0-20211027215823-ae77deb06f29/go.mod"
	"go4.org/unsafe/assume-no-moving-gc v0.0.0-20211027215541-db492cf91b37"
	"go4.org/unsafe/assume-no-moving-gc v0.0.0-20211027215541-db492cf91b37/go.mod"
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod"
	"golang.org/x/crypto v0.0.0-20191011191535-87dc89f01550/go.mod"
	"golang.org/x/crypto v0.0.0-20200622213623-75b288015ac9/go.mod"
	"golang.org/x/crypto v0.0.0-20201203163018-be400aefbc4c/go.mod"
	"golang.org/x/crypto v0.0.0-20210220033148-5ea612d1eb83/go.mod"
	"golang.org/x/crypto v0.0.0-20210711020723-a769d52b0f97/go.mod"
	"golang.org/x/crypto v0.0.0-20210817164053-32db794688a5"
	"golang.org/x/crypto v0.0.0-20210817164053-32db794688a5/go.mod"
	"golang.org/x/exp v0.0.0-20190121172915-509febef88a4/go.mod"
	"golang.org/x/lint v0.0.0-20181026193005-c67002cb31c3/go.mod"
	"golang.org/x/lint v0.0.0-20190227174305-5b3e6a55c961/go.mod"
	"golang.org/x/lint v0.0.0-20190313153728-d0100b6bd8b3/go.mod"
	"golang.org/x/lint v0.0.0-20200302205851-738671d3881b/go.mod"
	"golang.org/x/mod v0.1.1-0.20191105210325-c90efee705ee/go.mod"
	"golang.org/x/mod v0.3.0/go.mod"
	"golang.org/x/mod v0.4.2"
	"golang.org/x/net v0.0.0-20180218175443-cbe0f9307d01/go.mod"
	"golang.org/x/net v0.0.0-20180724234803-3673e40ba225/go.mod"
	"golang.org/x/net v0.0.0-20180826012351-8a410e7b638d/go.mod"
	"golang.org/x/net v0.0.0-20190108225652-1e06a53dbb7e/go.mod"
	"golang.org/x/net v0.0.0-20190213061140-3a22650c66bd/go.mod"
	"golang.org/x/net v0.0.0-20190311183353-d8887717615a/go.mod"
	"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod"
	"golang.org/x/net v0.0.0-20190620200207-3b0461eec859/go.mod"
	"golang.org/x/net v0.0.0-20200202094626-16171245cfb2/go.mod"
	"golang.org/x/net v0.0.0-20200324143707-d3edc9973b7e/go.mod"
	"golang.org/x/net v0.0.0-20200822124328-c89045814202/go.mod"
	"golang.org/x/net v0.0.0-20201021035429-f5854403a974/go.mod"
	"golang.org/x/net v0.0.0-20201202161906-c7110b5ffcbb/go.mod"
	"golang.org/x/net v0.0.0-20210226172049-e18ecbb05110/go.mod"
	"golang.org/x/net v0.0.0-20210903162142-ad29c8ab022f"
	"golang.org/x/net v0.0.0-20210903162142-ad29c8ab022f/go.mod"
	"golang.org/x/oauth2 v0.0.0-20180821212333-d2e6202438be/go.mod"
	"golang.org/x/oauth2 v0.0.0-20200107190931-bf48bf16ab8d/go.mod"
	"golang.org/x/sync v0.0.0-20180314180146-1d60e4601c6f/go.mod"
	"golang.org/x/sync v0.0.0-20181108010431-42b317875d0f/go.mod"
	"golang.org/x/sync v0.0.0-20181221193216-37e7f081c4d4/go.mod"
	"golang.org/x/sync v0.0.0-20190423024810-112230192c58/go.mod"
	"golang.org/x/sync v0.0.0-20201020160332-67f06af15bc9/go.mod"
	"golang.org/x/sync v0.0.0-20210220032951-036812b2e83c"
	"golang.org/x/sys v0.0.0-20180830151530-49385e6e1522/go.mod"
	"golang.org/x/sys v0.0.0-20190116161447-11f53e031339/go.mod"
	"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod"
	"golang.org/x/sys v0.0.0-20190412213103-97732733099d/go.mod"
	"golang.org/x/sys v0.0.0-20190813064441-fde4db37ae7a/go.mod"
	"golang.org/x/sys v0.0.0-20190902133755-9109b7679e13/go.mod"
	"golang.org/x/sys v0.0.0-20190916202348-b4ddaad3f8a3/go.mod"
	"golang.org/x/sys v0.0.0-20191026070338-33540a1f6037/go.mod"
	"golang.org/x/sys v0.0.0-20191224085550-c709ea063b76/go.mod"
	"golang.org/x/sys v0.0.0-20200116001909-b77594299b42/go.mod"
	"golang.org/x/sys v0.0.0-20200323222414-85ca7c5b95cd/go.mod"
	"golang.org/x/sys v0.0.0-20200413165638-669c56c373c4/go.mod"
	"golang.org/x/sys v0.0.0-20200930185726-fdedc70b468f/go.mod"
	"golang.org/x/sys v0.0.0-20201119102817-f84b799fce68/go.mod"
	"golang.org/x/sys v0.0.0-20201202213521-69691e467435/go.mod"
	"golang.org/x/sys v0.0.0-20201204225414-ed752295db88/go.mod"
	"golang.org/x/sys v0.0.0-20210119212857-b64e53b001e4/go.mod"
	"golang.org/x/sys v0.0.0-20210615035016-665e8c7367d1/go.mod"
	"golang.org/x/sys v0.0.0-20210806184541-e5e7981a1069/go.mod"
	"golang.org/x/sys v0.0.0-20210816074244-15123e1e1f71/go.mod"
	"golang.org/x/sys v0.0.0-20211013075003-97ac67df715c/go.mod"
	"golang.org/x/sys v0.0.0-20211025201205-69cdffdb9359"
	"golang.org/x/sys v0.0.0-20211025201205-69cdffdb9359/go.mod"
	"golang.org/x/term v0.0.0-20201117132131-f5c789dd3221/go.mod"
	"golang.org/x/term v0.0.0-20201126162022-7de9c90e9dd1/go.mod"
	"golang.org/x/text v0.3.0/go.mod"
	"golang.org/x/text v0.3.2/go.mod"
	"golang.org/x/text v0.3.3/go.mod"
	"golang.org/x/text v0.3.6"
	"golang.org/x/text v0.3.6/go.mod"
	"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod"
	"golang.org/x/tools v0.0.0-20190114222345-bf090417da8b/go.mod"
	"golang.org/x/tools v0.0.0-20190226205152-f727befe758c/go.mod"
	"golang.org/x/tools v0.0.0-20190311212946-11955173bddd/go.mod"
	"golang.org/x/tools v0.0.0-20190524140312-2c0ae7006135/go.mod"
	"golang.org/x/tools v0.0.0-20191119224855-298f0cb1881e/go.mod"
	"golang.org/x/tools v0.0.0-20200130002326-2f3ba24bd6e7/go.mod"
	"golang.org/x/tools v0.1.0/go.mod"
	"golang.org/x/tools v0.1.1"
	"golang.org/x/xerrors v0.0.0-20190717185122-a985d3407aa7/go.mod"
	"golang.org/x/xerrors v0.0.0-20191011141410-1b5146add898/go.mod"
	"golang.org/x/xerrors v0.0.0-20191204190536-9bdfabe68543/go.mod"
	"golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1"
	"golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1/go.mod"
	"google.golang.org/appengine v1.1.0/go.mod"
	"google.golang.org/appengine v1.4.0/go.mod"
	"google.golang.org/genproto v0.0.0-20180817151627-c66870c02cf8/go.mod"
	"google.golang.org/genproto v0.0.0-20190819201941-24fa4b261c55/go.mod"
	"google.golang.org/genproto v0.0.0-20200513103714-09dca8ec2884/go.mod"
	"google.golang.org/genproto v0.0.0-20200526211855-cb27e3aa2013"
	"google.golang.org/genproto v0.0.0-20200526211855-cb27e3aa2013/go.mod"
	"google.golang.org/grpc v1.19.0/go.mod"
	"google.golang.org/grpc v1.23.0/go.mod"
	"google.golang.org/grpc v1.25.1/go.mod"
	"google.golang.org/grpc v1.27.0/go.mod"
	"google.golang.org/grpc v1.33.1/go.mod"
	"google.golang.org/grpc v1.36.0/go.mod"
	"google.golang.org/grpc v1.40.0"
	"google.golang.org/grpc v1.40.0/go.mod"
	"google.golang.org/protobuf v0.0.0-20200109180630-ec00e32a8dfd/go.mod"
	"google.golang.org/protobuf v0.0.0-20200221191635-4d8936d0db64/go.mod"
	"google.golang.org/protobuf v0.0.0-20200228230310-ab0ca4ff8a60/go.mod"
	"google.golang.org/protobuf v1.20.1-0.20200309200217-e05f789c0967/go.mod"
	"google.golang.org/protobuf v1.21.0/go.mod"
	"google.golang.org/protobuf v1.22.0/go.mod"
	"google.golang.org/protobuf v1.23.0/go.mod"
	"google.golang.org/protobuf v1.23.1-0.20200526195155-81db48ad09cc/go.mod"
	"google.golang.org/protobuf v1.25.0/go.mod"
	"google.golang.org/protobuf v1.26.0-rc.1/go.mod"
	"google.golang.org/protobuf v1.26.0/go.mod"
	"google.golang.org/protobuf v1.27.1"
	"google.golang.org/protobuf v1.27.1/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127/go.mod"
	"gopkg.in/check.v1 v1.0.0-20200227125254-8fa46927fb4f/go.mod"
	"gopkg.in/check.v1 v1.0.0-20200902074654-038fdea0a05b/go.mod"
	"gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c"
	"gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c/go.mod"
	"gopkg.in/errgo.v2 v2.1.0/go.mod"
	"gopkg.in/go-playground/assert.v1 v1.2.1/go.mod"
	"gopkg.in/go-playground/validator.v9 v9.29.1/go.mod"
	"gopkg.in/tomb.v1 v1.0.0-20141024135613-dd632973f1e7"
	"gopkg.in/yaml.v2 v2.2.2/go.mod"
	"gopkg.in/yaml.v2 v2.2.3/go.mod"
	"gopkg.in/yaml.v2 v2.2.8/go.mod"
	"gopkg.in/yaml.v2 v2.4.0"
	"gopkg.in/yaml.v2 v2.4.0/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20210107192922-496545a6307b"
	"gopkg.in/yaml.v3 v3.0.0-20210107192922-496545a6307b/go.mod"
	"honnef.co/go/tools v0.0.0-20190102054323-c2f93a96b099/go.mod"
	"honnef.co/go/tools v0.0.0-20190523083050-ea95bdfd59fc/go.mod"
	"inet.af/netaddr v0.0.0-20211027220019-c74959edd3b6"
	"inet.af/netaddr v0.0.0-20211027220019-c74959edd3b6/go.mod"
)

go-module_set_globals

if [[ ${PV} == "9999" ]]; then
	MY_PV="unstable"
	KEYWORDS=""
else
	MY_PV="${PV}"
	EGIT_COMMIT="v${MY_PV}"
	KEYWORDS="~amd64"
fi

SRC_URI="
	${EGO_SUM_SRC_URI}
"
LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="+v2ray xray systemd"
REQUIRED_USE="|| ( v2ray xray )"

DEPEND=""
RDEPEND="${DEPEND}
	v2ray? ( || (
		net-proxy/v2ray
		net-proxy/v2ray-bin
	) )
	xray? ( >=net-proxy/Xray-1.4.3 )
"
BDEPEND="
	dev-lang/go
	>=net-libs/nodejs-14.17.5-r1
	sys-apps/yarn
"

src_unpack() {
	git-r3_src_unpack

	cd "${WORKDIR}/v2rayA-${PV}/gui"
	yarn --ckeck-files || die

	go-module_setup_proxy
}

src_compile() {
	cd "${WORKDIR}/v2rayA-${PV}/gui"
	OUTPUT_DIR="${WORKDIR}/v2rayA-${PV}/service/server/router/web" yarn build || die

	cd "${WORKDIR}/v2rayA-${PV}/service"
	CGO_ENABLED=0 go build -ldflags "-X github.com/v2rayA/v2rayA/conf.Version='${MY_PV}' -s -w" -o v2raya || die
}

src_install() {
	default
	dobin "${WORKDIR}"/v2rayA-${PV}/service/v2raya

	if use systemd; then
		systemd_newunit "${WORKDIR}"/v2rayA-${PV}/install/universal/v2raya.service v2raya.service
		systemd_newunit "${WORKDIR}"/v2rayA-${PV}/install/universal/v2raya@.service v2raya@.service
	fi

	#thanks to @Universebenzene
	newinitd "${FILESDIR}"/${PN}.initd ${PN}
	newinitd "${FILESDIR}"/${PN}-user.initd ${PN}-user
	newconfd "${FILESDIR}"/${PN}.confd ${PN}
	newconfd "${FILESDIR}"/${PN}-user.confd ${PN}-user

	newicon -s 512 "${WORKDIR}"/v2rayA-${PV}/gui/public/img/icons/android-chrome-512x512.png v2raya.png
	domenu "${WORKDIR}"/v2rayA-${PV}/install/universal/v2raya.desktop
}