package http.socket;

import java.io.IOException;
import java.net.*;
import java.nio.charset.StandardCharsets;

public class DatagramRunner {

    public static void main(String[] args) throws IOException {

        InetAddress inetAddress = InetAddress.getByName("localhost");
        try(DatagramSocket datagramSocket = new DatagramSocket()) {
            byte[] bytes = "Hello from UPD client".getBytes(StandardCharsets.UTF_8);
            DatagramPacket packet = new DatagramPacket(bytes, bytes.length, inetAddress, 7777);
            datagramSocket.send(packet);
        }
    }
}
