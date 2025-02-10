# Set up SSL access for local server

## Access from iPhone

If the other machine is an **iPhone**, you need to install and trust the `mkcert` root certificate on iOS. Here’s how to do it:  

---

### **Step 1: Copy the Root CA to the iPhone**

On your **Mac (foo.local)**, locate the `mkcert` root CA:

```sh
mkcert -CAROOT

# for example ... the output directory may be 
# "/Users/yourusername/Library/Application Support/mkcert"
# open this directory to look at the root certificates

```

Inside this folder, find `rootCA.pem`.

#### **Transfer the Certificate to the iPhone**

You have a few options:  

1. **Airdrop** (Recommended)  
   - Right-click `rootCA.pem` and select **Share → AirDrop**.  
   - Send it to your iPhone.  
2. **Email** (Send it to yourself)  
3. **Upload to iCloud Drive** (Then open it from the iPhone)

---

### **Step 2: Install the Certificate on iPhone**

1. Open the file (`rootCA.pem`) on your iPhone.  
2. It will prompt you to **"Install Profile"** → Tap **Install**.  
3. After installation, go to:  
   - **Settings** → **General** → **VPN & Device Management**.  
   - Under **Downloaded Profile**, tap the certificate and **Install**.

---

### **Step 3: Trust the Certificate on iPhone**

By default, iOS does not trust newly installed root certificates for HTTPS.  
You need to **explicitly trust it**:  

1. **Go to**:  
   **Settings** → **General** → **About** → **Certificate Trust Settings**.  
2. Under **"Enable Full Trust for Root Certificates"**, find your certificate and **toggle it ON**.  
3. Restart your iPhone.

---

### **Step 4: Verify and Access**

1. Make sure your Mac and iPhone are on the **same Wi-Fi network**.  
2. Open Safari and try accessing:  

   ```sh
   open https://foo.local:8080
   ```

3. If it doesn’t load:
   - Ensure your Mac’s **firewall allows connections** (`System Settings → Network → Firewall`).
   - Try using the Mac’s local IP address instead of `foo.local`, like:

    ```sh
    open "https://192.168.x.x:8080"
    ```

   - If `foo.local` doesn't resolve, manually add it to iPhone's DNS settings or use a network-wide DNS.

---

### **Now, your iPhone should trust the local HTTPS server! 🚀**  

