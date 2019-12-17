NAME="$1"
docker run -v "$STACK_DATA/openvpn:/etc/openvpn" --log-driver=none --rm -it kylemanna/openvpn easyrsa build-client-full "$NAME"
docker run -v "$STACK_DATA/openvpn:/etc/openvpn" --log-driver=none --rm kylemanna/openvpn ovpn_getclient "$NAME" > "$NAME.ovpn"