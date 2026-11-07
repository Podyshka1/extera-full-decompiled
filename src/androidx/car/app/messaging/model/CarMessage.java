package androidx.car.app.messaging.model;

import android.net.Uri;
import android.os.Bundle;
import androidx.car.app.model.CarText;
import androidx.core.app.Person;
import java.util.Objects;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public class CarMessage {
    private final CarText mBody;
    private final boolean mIsRead;
    private final String mMultimediaMimeType;
    private final Uri mMultimediaUri;
    private final long mReceivedTimeEpochMillis;
    private final Bundle mSender;

    public int hashCode() {
        return Objects.hash(Integer.valueOf(PersonsEqualityHelper.getPersonHashCode(getSender())), this.mBody, Long.valueOf(this.mReceivedTimeEpochMillis), Boolean.valueOf(this.mIsRead));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CarMessage)) {
            return false;
        }
        CarMessage carMessage = (CarMessage) obj;
        return PersonsEqualityHelper.arePersonsEqual(getSender(), carMessage.getSender()) && Objects.equals(this.mBody, carMessage.mBody) && this.mReceivedTimeEpochMillis == carMessage.mReceivedTimeEpochMillis && this.mIsRead == carMessage.mIsRead;
    }

    public CarMessage(Builder builder) {
        Person person = builder.mSender;
        this.mSender = person == null ? null : ConversationItem.validateSender(person).toBundle();
        this.mBody = builder.mBody;
        this.mMultimediaMimeType = builder.mMultimediaMimeType;
        this.mMultimediaUri = builder.mMultimediaUri;
        this.mReceivedTimeEpochMillis = builder.mReceivedTimeEpochMillis;
        this.mIsRead = builder.mIsRead;
    }

    private CarMessage() {
        this.mSender = null;
        this.mBody = null;
        this.mMultimediaMimeType = null;
        this.mMultimediaUri = null;
        this.mReceivedTimeEpochMillis = 0L;
        this.mIsRead = false;
    }

    public Person getSender() {
        Bundle bundle = this.mSender;
        if (bundle == null) {
            return null;
        }
        return Person.fromBundle(bundle);
    }

    public CarText getBody() {
        return this.mBody;
    }

    public String getMultimediaMimeType() {
        return this.mMultimediaMimeType;
    }

    public Uri getMultimediaUri() {
        return this.mMultimediaUri;
    }

    public long getReceivedTimeEpochMillis() {
        return this.mReceivedTimeEpochMillis;
    }

    public boolean isRead() {
        return this.mIsRead;
    }

    public static final class Builder {
        CarText mBody;
        boolean mIsRead;
        String mMultimediaMimeType;
        Uri mMultimediaUri;
        long mReceivedTimeEpochMillis;
        Person mSender;

        public Builder setSender(Person person) {
            this.mSender = person;
            return this;
        }

        public Builder setBody(CarText carText) {
            this.mBody = carText;
            return this;
        }

        public Builder setReceivedTimeEpochMillis(long j) {
            this.mReceivedTimeEpochMillis = j;
            return this;
        }

        public Builder setRead(boolean z) {
            this.mIsRead = z;
            return this;
        }

        public CarMessage build() {
            String str = this.mMultimediaMimeType;
            if ((this.mMultimediaUri == null) ^ (str == null)) {
                Segment$$ExternalSyntheticBUOutline1.m973m("Incomplete multimedia data detected in CarMessage. Please be sure to provide both MIME type and URI for multimedia messages.");
                return null;
            }
            if (this.mBody == null && str == null) {
                Segment$$ExternalSyntheticBUOutline1.m973m("Message must have content. Please provide body text, multimedia data (URI + MIME type), or both.");
                return null;
            }
            return new CarMessage(this);
        }
    }
}
