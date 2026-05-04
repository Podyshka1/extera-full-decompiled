package com.exteragram.messenger.export.p011ui;

import android.view.View;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.export.output.FileManager;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.google.gson.annotations.SerializedName;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import org.telegram.messenger.FileLog;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;

/* JADX INFO: loaded from: classes4.dex */
public class DialogsView extends BasePreferencesActivity {
    private ArrayList dialogObjects;
    private final String mainPath;

    public enum DialogsItem {
        GENERAL_HEADER
    }

    public DialogsView(String str) {
        this.mainPath = str;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        loadDialogs();
        return true;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return "Dialogs";
    }

    private void loadDialogs() {
        String fileContent = FileManager.readFileContent(new File(this.mainPath, "result.json"));
        if (fileContent == null) {
            BulletinFactory.m1246of(this).createErrorBulletin("Failed to read result.json!").show();
            this.dialogObjects = new ArrayList();
            return;
        }
        try {
            ParsedUserInfo parsedUserInfo = (ParsedUserInfo) ExteraConfig.GSON.fromJson(fileContent, ParsedUserInfo.class);
            if (parsedUserInfo != null && parsedUserInfo.chats != null) {
                this.dialogObjects = new ArrayList(Arrays.asList(parsedUserInfo.chats));
            } else {
                this.dialogObjects = new ArrayList();
            }
        } catch (Throwable th) {
            FileLog.m1135e("Export read from file failed!", th);
            BulletinFactory.m1246of(this).createErrorBulletin("Failed to parse result.json!").show();
            this.dialogObjects = new ArrayList();
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        arrayList.add(UItem.asHeader("Dialogs"));
        ArrayList arrayList2 = this.dialogObjects;
        if (arrayList2 == null || arrayList2.isEmpty()) {
            arrayList.add(UItem.asShadow("No dialogs found in the export file."));
            return;
        }
        for (int i = 0; i < this.dialogObjects.size(); i++) {
            boolean z = true;
            UItem uItemAsButton = UItem.asButton(DialogsItem.values().length + 1 + i, ((ParsedDialogObject) this.dialogObjects.get(i)).name);
            if (i >= this.dialogObjects.size() - 1) {
                z = false;
            }
            arrayList.add(uItemAsButton.showDivider(z));
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void onClick(UItem uItem, View view, int i, float f, float f2) {
        int length = DialogsItem.values().length + 1;
        int i2 = uItem.f2105id;
        if (i2 >= length) {
            int i3 = i2 - length;
            ArrayList arrayList = this.dialogObjects;
            if (arrayList == null || i3 < 0 || i3 >= arrayList.size()) {
                return;
            }
            presentFragment(new ChatViewer(this.mainPath + "/" + ((ParsedDialogObject) this.dialogObjects.get(i3)).path));
        }
    }

    private static class ParsedDialogObject {

        /* JADX INFO: renamed from: id */
        @SerializedName("id")
        public long f293id;

        @SerializedName("left")
        public boolean left;

        @SerializedName("name")
        public String name;

        @SerializedName("relativePath")
        public String path;

        private ParsedDialogObject() {
        }
    }

    private static class ParsedUserInfo {

        @SerializedName("about")
        public String about;

        @SerializedName("chats")
        public ParsedDialogObject[] chats;

        private ParsedUserInfo() {
        }
    }
}
