package androidx.car.app.messaging.model;

import android.net.Uri;
import android.os.Bundle;
import androidx.car.app.model.CarText;
import androidx.core.app.Person;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class CarMessage {
    private final CarText mBody;
    private final boolean mIsRead;
    private final String mMultimediaMimeType;
    private final Uri mMultimediaUri;
    private final long mReceivedTimeEpochMillis;
    private final Bundle mSender;

    public static final class Builder {
    }

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
        throw null;
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
}
