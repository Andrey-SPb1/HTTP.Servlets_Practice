package http.socket;

import java.io.*;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.Socket;

public class SocketRunner {
    public static void main(String[] args) throws IOException {

        InetAddress inetAddresses = Inet4Address.getByName("google.com");

        try(Socket socket = new Socket(inetAddresses, 80);
            InputStream inputStream = new DataInputStream(socket.getInputStream());
            DataOutputStream outputStream = new DataOutputStream(socket.getOutputStream())) {

            outputStream.writeUTF("Hello World!");
            byte[] response = inputStream.readAllBytes();
            System.out.println(response.length);

        }
    }
}
