package com.exteragram.messenger.export.api;

import com.android.tools.p007r8.RecordTag;
import com.exteragram.messenger.p008ai.p009ui.AbstractC1011x1d8a54ff;
import java.util.ArrayList;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class ApiWrap$Poll {
    public String question;

    /* JADX INFO: renamed from: id */
    public long f274id = 0;
    public int totalVotes = 0;
    public boolean closed = false;
    public ArrayList answers = new ArrayList();

    public static final class Answer extends RecordTag {

        /* JADX INFO: renamed from: my */
        private final boolean f275my;
        private final byte[] option;
        private final String text;
        private final int votes;

        private /* synthetic */ boolean $record$equals(Object obj) {
            if (!(obj instanceof Answer)) {
                return false;
            }
            Answer answer = (Answer) obj;
            return this.f275my == answer.f275my && this.votes == answer.votes && Objects.equals(this.text, answer.text) && Objects.equals(this.option, answer.option);
        }

        private /* synthetic */ Object[] $record$getFieldsAsObjects() {
            return new Object[]{this.text, this.option, Integer.valueOf(this.votes), Boolean.valueOf(this.f275my)};
        }

        public Answer(String str, byte[] bArr, int i, boolean z) {
            this.text = str;
            this.option = bArr;
            this.votes = i;
            this.f275my = z;
        }

        public final boolean equals(Object obj) {
            return $record$equals(obj);
        }

        public final int hashCode() {
            return ApiWrap$Poll$Answer$$ExternalSyntheticRecord0.m239m(this.f275my, this.votes, this.text, this.option);
        }

        /* JADX INFO: renamed from: my */
        public boolean m238my() {
            return this.f275my;
        }

        public String text() {
            return this.text;
        }

        public final String toString() {
            return AbstractC1011x1d8a54ff.m224m($record$getFieldsAsObjects(), Answer.class, "text;option;votes;my");
        }

        public int votes() {
            return this.votes;
        }
    }
}
