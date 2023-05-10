package http.socket;

import java.io.*;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.Socket;
import java.util.Scanner;

public class SocketRunner {
    public static void main(String[] args) throws IOException {

        InetAddress inetAddresses = Inet4Address.getByName("localhost"); // 127.0.0.1

        try(Socket socket = new Socket(inetAddresses, 7777);
            DataInputStream inputStream = new DataInputStream(socket.getInputStream());
            DataOutputStream outputStream = new DataOutputStream(socket.getOutputStream());
            Scanner scanner = new Scanner(System.in)) {
            System.out.println("Response from server: " + inputStream.readUTF());
            while(scanner.hasNext()) {
                String request = scanner.nextLine();
                outputStream.writeUTF(request);
                System.out.println("Response from server: " + inputStream.readUTF());
            }
        }
    }
}
