package com.exteragram.messenger.utils.network;

import com.exteragram.messenger.backup.InvisibleEncryptor;
import java.io.File;
import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.json.JSONObject;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ImgurUtils {
    private static final String CLIENT_ID = InvisibleEncryptor.decode("\u2001\u2002\u206a\u200b\u2000 \u206c\u2000\u206d\u206e\u2000\u206a\u200a\u2000\u206a\u200a\u2000\u206d\u206e\u2000\u206e\u200c\u2000\u206d\u206f\u2000 \u206c\u2000\u206a\u200a\u2000 \u206f\u2000\u206d\u206f\u2000\u206a\u200c\u2000\u206e\u200b\u2000\u206e\u200f");

    public static ImgurResponse uploadImage(File file) {
        OkHttpClient client = ExteraHttpClient.INSTANCE.getClient();
        MediaType mediaTypeFromFile = getMediaTypeFromFile(file);
        if (mediaTypeFromFile == null) {
            return null;
        }
        try {
            Response responseExecute = client.newCall(new Request.Builder().url("https://api.imgur.com/3/image").header("Authorization", "Client-ID " + CLIENT_ID).post(RequestBody.create(file, mediaTypeFromFile)).build()).execute();
            if (!responseExecute.isSuccessful()) {
                FileLog.m1134e("Unexpected code " + responseExecute);
                return null;
            }
            try {
                JSONObject jSONObject = new JSONObject(responseExecute.body().string()).getJSONObject("data");
                return new ImgurResponse(jSONObject.getString("link"), jSONObject.getString("id"), jSONObject.getString("deletehash"));
            } catch (Exception e) {
                FileLog.m1136e(e);
                return null;
            }
        } catch (IOException e2) {
            FileLog.m1136e(e2);
            return null;
        }
    }

    public static boolean deleteImage(String str) {
        try {
            return ExteraHttpClient.INSTANCE.getClient().newCall(new Request.Builder().url("https://api.imgur.com/3/image/" + str).header("Authorization", "Client-ID " + CLIENT_ID).delete().build()).execute().isSuccessful();
        } catch (IOException e) {
            FileLog.m1136e(e);
            return false;
        }
    }

    private static MediaType getMediaTypeFromFile(File file) {
        String lowerCase = file.getName().toLowerCase();
        if (lowerCase.endsWith(".png")) {
            return MediaType.parse("image/png");
        }
        if (lowerCase.endsWith(".jpg") || lowerCase.endsWith(".jpeg")) {
            return MediaType.parse("image/jpeg");
        }
        if (lowerCase.endsWith(".gif")) {
            return MediaType.parse("image/gif");
        }
        if (lowerCase.endsWith(".bmp")) {
            return MediaType.parse("image/bmp");
        }
        if (lowerCase.endsWith(".webp")) {
            return MediaType.parse("image/webp");
        }
        if (lowerCase.endsWith(".tiff") || lowerCase.endsWith(".tif")) {
            return MediaType.parse("image/tiff");
        }
        return null;
    }

    public static class ImgurResponse {
        public String deleteHash;
        public String imageId;
        public String imageUrl;

        public ImgurResponse(String str, String str2, String str3) {
            this.imageUrl = str;
            this.imageId = str2;
            this.deleteHash = str3;
        }
    }
}
