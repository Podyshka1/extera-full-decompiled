package com.exteragram.messenger.export.output;

import com.exteragram.messenger.export.ExportSettings;
import com.exteragram.messenger.export.api.ApiWrap$ContactsList;
import com.exteragram.messenger.export.api.ApiWrap$DialogInfo;
import com.exteragram.messenger.export.api.ApiWrap$DialogsInfo;
import com.exteragram.messenger.export.api.ApiWrap$ExportPersonalInfo;
import com.exteragram.messenger.export.api.ApiWrap$File;
import com.exteragram.messenger.export.api.ApiWrap$MessagesSlice;
import com.exteragram.messenger.export.api.ApiWrap$SessionsList;
import com.exteragram.messenger.export.api.ApiWrap$StoriesSlice;
import com.exteragram.messenger.export.api.ApiWrap$UserpicsInfo;
import com.exteragram.messenger.export.output.OutputFile;
import com.exteragram.messenger.export.output.html.HtmlWriter;
import com.exteragram.messenger.export.output.htmlAndJson.HtmlAndJsonWriter;
import com.exteragram.messenger.export.output.json.JsonWriter;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractWriter {

    public enum Format {
        Html,
        Json,
        HtmlAndJson
    }

    public abstract Result finish();

    public abstract String mainFilePath();

    public abstract Result start(ExportSettings exportSettings, OutputFile.Stats stats);

    public abstract Result writeContactsList(ApiWrap$ContactsList apiWrap$ContactsList);

    public abstract Result writeDialogEnd();

    public abstract Result writeDialogSlice(ApiWrap$MessagesSlice apiWrap$MessagesSlice);

    public abstract Result writeDialogStart(ApiWrap$DialogInfo apiWrap$DialogInfo);

    public abstract Result writeDialogsEnd();

    public abstract Result writeDialogsStart(ApiWrap$DialogsInfo apiWrap$DialogsInfo);

    public abstract Result writeOtherData(ApiWrap$File apiWrap$File);

    public abstract Result writePersonal(ApiWrap$ExportPersonalInfo apiWrap$ExportPersonalInfo);

    public abstract Result writeSessionsList(ApiWrap$SessionsList apiWrap$SessionsList);

    public abstract Result writeStoriesEnd();

    public abstract Result writeStoriesSlice(ApiWrap$StoriesSlice apiWrap$StoriesSlice);

    public abstract Result writeStoriesStart(int i);

    public abstract Result writeUserpicsEnd();

    public abstract Result writeUserpicsSlice(ArrayList arrayList);

    public abstract Result writeUserpicsStart(ApiWrap$UserpicsInfo apiWrap$UserpicsInfo);

    public static AbstractWriter CreateWriter(Format format) {
        int iOrdinal = format.ordinal();
        if (iOrdinal == 0) {
            return new HtmlWriter();
        }
        if (iOrdinal == 1) {
            return new JsonWriter();
        }
        if (iOrdinal != 2) {
            throw new IncompatibleClassChangeError();
        }
        return new HtmlAndJsonWriter();
    }

    public static class Result {
        String path;
        Type type;

        public enum Type {
            Success,
            Error,
            FatalError
        }

        public Result(Type type, String str) {
            this.type = type;
            this.path = str;
        }

        public static Result Success() {
            return new Result(Type.Success, _UrlKt.FRAGMENT_ENCODE_SET);
        }

        public static Result Error() {
            return new Result(Type.Error, _UrlKt.FRAGMENT_ENCODE_SET);
        }

        public boolean isSuccess() {
            return this.type == Type.Success;
        }
    }
}
