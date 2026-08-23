package androidx.car.app.model;

import androidx.car.app.utils.CollectionUtils;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class Pane {
    private final List<Action> mActionList;
    private final CarIcon mImage;
    private final boolean mIsLoading;
    private final List<Row> mRows;

    public static final class Builder {
    }

    public boolean isLoading() {
        return this.mIsLoading;
    }

    public List<Action> getActions() {
        return CollectionUtils.emptyIfNull(this.mActionList);
    }

    public List<Row> getRows() {
        return CollectionUtils.emptyIfNull(this.mRows);
    }

    public CarIcon getImage() {
        return this.mImage;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[ rows: ");
        List<Row> list = this.mRows;
        sb.append(list != null ? list.toString() : null);
        sb.append(", action list: ");
        sb.append(this.mActionList);
        sb.append("]");
        return sb.toString();
    }

    public int hashCode() {
        return Objects.hash(this.mRows, this.mActionList, Boolean.valueOf(this.mIsLoading), this.mImage);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Pane)) {
            return false;
        }
        Pane pane = (Pane) obj;
        return this.mIsLoading == pane.mIsLoading && Objects.equals(this.mActionList, pane.mActionList) && Objects.equals(this.mRows, pane.mRows) && Objects.equals(this.mImage, pane.mImage);
    }

    public Pane(Builder builder) {
        throw null;
    }

    private Pane() {
        List list = Collections.EMPTY_LIST;
        this.mRows = list;
        this.mActionList = list;
        this.mIsLoading = false;
        this.mImage = null;
    }
}
