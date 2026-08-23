package com.exteragram.messenger.ai;

import android.content.SharedPreferences;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.ai.data.Message;
import com.exteragram.messenger.ai.data.Role;
import com.exteragram.messenger.ai.data.Service;
import com.exteragram.messenger.ai.data.Suggestions;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.ArrayList;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes.dex */
public abstract class AiConfig {
    private static boolean configLoaded;
    public static SharedPreferences.Editor editor;
    public static boolean insertAsQuote;
    public static SharedPreferences preferences;
    public static boolean responseStreaming;
    public static boolean saveHistory;
    public static boolean showResponseOnly;
    public static final Service DEFAULT_SERVICE = new Service("https://generativelanguage.googleapis.com/v1beta", "gemini-2.5-flash", null);
    private static final Object sync = new Object();

    static {
        loadConfig();
    }

    public static void loadConfig() {
        synchronized (sync) {
            try {
                if (configLoaded) {
                    return;
                }
                SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("gptconfig", 0);
                preferences = sharedPreferences;
                editor = sharedPreferences.edit();
                saveHistory = preferences.getBoolean("saveHistory", true);
                responseStreaming = preferences.getBoolean("responseStreaming", true);
                showResponseOnly = preferences.getBoolean("showResponseOnly", false);
                insertAsQuote = preferences.getBoolean("insertAsQuote", true);
                configLoaded = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void saveConversationHistory(ArrayList arrayList) {
        editor.putString("conversationHistory", ExteraConfig.GSON.toJson(arrayList)).apply();
    }

    public static ArrayList getConversationHistory() {
        Type type = new TypeToken<ArrayList<Message>>() { // from class: com.exteragram.messenger.ai.AiConfig.1
        }.getType();
        String string = preferences.getString("conversationHistory", null);
        if (string == null) {
            return new ArrayList();
        }
        ArrayList arrayList = (ArrayList) ExteraConfig.GSON.fromJson(string, type);
        return arrayList != null ? arrayList : new ArrayList();
    }

    public static void clearConversationHistory() {
        editor.remove("conversationHistory").apply();
    }

    public static void saveRoles(ArrayList arrayList) {
        editor.putString("roles", ExteraConfig.GSON.toJson(arrayList)).apply();
    }

    public static ArrayList getRoles() {
        Type type = new TypeToken<ArrayList<Role>>() { // from class: com.exteragram.messenger.ai.AiConfig.2
        }.getType();
        String string = preferences.getString("roles", null);
        if (string == null) {
            return new ArrayList();
        }
        try {
            ArrayList arrayList = (ArrayList) ExteraConfig.GSON.fromJson(string, type);
            return arrayList != null ? arrayList : new ArrayList();
        } catch (Exception e) {
            FileLog.m955e(e);
            return new ArrayList();
        }
    }

    public static String getSelectedRole() {
        return preferences.getString("selectedRole", Suggestions.values()[0].getRole().getName());
    }

    public static void setSelectedRole(Role role) {
        editor.putString("selectedRole", role.getName()).apply();
        clearConversationHistory();
    }

    public static int getSelectedService() {
        return preferences.getInt("selectedService", DEFAULT_SERVICE.hashCode());
    }

    public static void setSelectedServices(Service service) {
        editor.putInt("selectedService", service.hashCode()).apply();
        clearConversationHistory();
    }

    public static void clearSelectedService() {
        editor.remove("selectedService").apply();
        clearConversationHistory();
    }

    public static ArrayList getServices() {
        Type type = new TypeToken<ArrayList<Service>>() { // from class: com.exteragram.messenger.ai.AiConfig.3
        }.getType();
        String string = preferences.getString("services", null);
        if (string == null) {
            return new ArrayList();
        }
        try {
            ArrayList arrayList = (ArrayList) ExteraConfig.GSON.fromJson(string, type);
            return arrayList != null ? arrayList : new ArrayList();
        } catch (Exception e) {
            FileLog.m955e(e);
            return new ArrayList();
        }
    }

    public static void saveServices(ArrayList arrayList) {
        editor.putString("services", ExteraConfig.GSON.toJson(arrayList)).apply();
    }

    public static void removeLastFromHistory() {
        ArrayList conversationHistory = getConversationHistory();
        if (conversationHistory.size() >= 2) {
            conversationHistory.remove(conversationHistory.size() - 1);
            conversationHistory.remove(conversationHistory.size() - 1);
            saveConversationHistory(conversationHistory);
        }
    }
}
