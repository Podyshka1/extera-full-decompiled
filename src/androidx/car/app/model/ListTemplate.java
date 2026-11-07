package androidx.car.app.model;

import androidx.car.app.messaging.model.ConversationItem;
import androidx.car.app.model.ItemList;
import androidx.car.app.model.constraints.ActionsConstraints;
import androidx.car.app.model.constraints.CarTextConstraints;
import androidx.car.app.model.constraints.RowListConstraints;
import androidx.car.app.utils.CollectionUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public final class ListTemplate implements Template {
    static final int MAX_ALLOWED_ITEMS = 100;
    static final int MAX_MESSAGES_PER_CONVERSATION = 10;
    private final ActionStrip mActionStrip;
    private final List<Action> mActions;
    private final Action mHeaderAction;
    private final boolean mIsLoading;
    private final List<SectionedItemList> mSectionedLists;
    private final ItemList mSingleList;
    private final CarText mTitle;

    public CarText getTitle() {
        return this.mTitle;
    }

    public Action getHeaderAction() {
        return this.mHeaderAction;
    }

    public ActionStrip getActionStrip() {
        return this.mActionStrip;
    }

    public boolean isLoading() {
        return this.mIsLoading;
    }

    public ItemList getSingleList() {
        return this.mSingleList;
    }

    public List<SectionedItemList> getSectionedLists() {
        return CollectionUtils.emptyIfNull(this.mSectionedLists);
    }

    public List<Action> getActions() {
        return this.mActions;
    }

    public String toString() {
        return "ListTemplate";
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.mIsLoading), this.mTitle, this.mHeaderAction, this.mSingleList, this.mSectionedLists, this.mActionStrip);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ListTemplate)) {
            return false;
        }
        ListTemplate listTemplate = (ListTemplate) obj;
        return this.mIsLoading == listTemplate.mIsLoading && Objects.equals(this.mTitle, listTemplate.mTitle) && Objects.equals(this.mHeaderAction, listTemplate.mHeaderAction) && Objects.equals(this.mSingleList, listTemplate.mSingleList) && Objects.equals(this.mSectionedLists, listTemplate.mSectionedLists) && Objects.equals(this.mActionStrip, listTemplate.mActionStrip) && Objects.equals(this.mActions, listTemplate.mActions);
    }

    public ListTemplate(Builder builder) {
        this.mIsLoading = builder.mIsLoading;
        this.mTitle = builder.mTitle;
        this.mHeaderAction = builder.mHeaderAction;
        this.mSingleList = builder.mSingleList;
        this.mSectionedLists = CollectionUtils.unmodifiableCopy(builder.mSectionedLists);
        this.mActionStrip = builder.mActionStrip;
        this.mActions = CollectionUtils.unmodifiableCopy(builder.mActions);
    }

    private ListTemplate() {
        this.mIsLoading = false;
        this.mTitle = null;
        this.mHeaderAction = null;
        this.mSingleList = null;
        List list = Collections.EMPTY_LIST;
        this.mSectionedLists = list;
        this.mActionStrip = null;
        this.mActions = list;
    }

    public Builder toBuilder() {
        return new Builder(this);
    }

    public static final class Builder {
        ActionStrip mActionStrip;
        final List<Action> mActions;
        boolean mHasSelectableList;
        Action mHeaderAction;
        boolean mIsLoading;
        final List<SectionedItemList> mSectionedLists;
        ItemList mSingleList;
        CarText mTitle;

        public Builder setLoading(boolean z) {
            this.mIsLoading = z;
            return this;
        }

        public Builder setHeaderAction(Action action) {
            ActionsConstraints actionsConstraints = ActionsConstraints.ACTIONS_CONSTRAINTS_HEADER;
            Objects.requireNonNull(action);
            actionsConstraints.validateOrThrow(Collections.singletonList(action));
            this.mHeaderAction = action;
            return this;
        }

        public Builder setTitle(CharSequence charSequence) {
            Objects.requireNonNull(charSequence);
            CarText carTextCreate = CarText.create(charSequence);
            this.mTitle = carTextCreate;
            CarTextConstraints.TEXT_ONLY.validateOrThrow(carTextCreate);
            return this;
        }

        public Builder setSingleList(ItemList itemList) {
            Objects.requireNonNull(itemList);
            this.mSingleList = itemList;
            this.mSectionedLists.clear();
            this.mHasSelectableList = false;
            return this;
        }

        public ListTemplate build() {
            boolean z = (this.mSingleList == null && this.mSectionedLists.isEmpty()) ? false : true;
            if (this.mIsLoading == z) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Template is in a loading state but lists are added, or vice versa");
                return null;
            }
            if (z) {
                if (!this.mSectionedLists.isEmpty()) {
                    RowListConstraints.ROW_LIST_CONSTRAINTS_FULL_LIST.validateOrThrow(this.mSectionedLists);
                } else {
                    ItemList itemList = this.mSingleList;
                    if (itemList != null) {
                        RowListConstraints.ROW_LIST_CONSTRAINTS_FULL_LIST.validateOrThrow(itemList);
                    }
                }
            }
            if (!this.mSectionedLists.isEmpty()) {
                List<SectionedItemList> truncatedCopy = ListTemplate.getTruncatedCopy(this.mSectionedLists);
                this.mSectionedLists.clear();
                this.mSectionedLists.addAll(truncatedCopy);
            } else {
                ItemList itemList2 = this.mSingleList;
                if (itemList2 != null) {
                    this.mSingleList = ListTemplate.truncate(itemList2, new TruncateCounter(100));
                }
            }
            return new ListTemplate(this);
        }

        public Builder() {
            this.mSectionedLists = new ArrayList();
            this.mActions = new ArrayList();
        }

        public Builder(ListTemplate listTemplate) {
            this.mIsLoading = listTemplate.isLoading();
            this.mHeaderAction = listTemplate.getHeaderAction();
            this.mTitle = listTemplate.getTitle();
            this.mSingleList = listTemplate.getSingleList();
            this.mSectionedLists = new ArrayList(listTemplate.getSectionedLists());
            this.mActionStrip = listTemplate.getActionStrip();
            this.mActions = new ArrayList(listTemplate.getActions());
        }
    }

    public static class TruncateCounter {
        private int mRemainingItems;

        public TruncateCounter(int i) {
            this.mRemainingItems = i;
        }

        public int decrement() {
            int i = this.mRemainingItems - 1;
            this.mRemainingItems = i;
            return i;
        }

        public int decrement(int i) {
            int i2 = this.mRemainingItems - i;
            this.mRemainingItems = i2;
            return i2;
        }

        public boolean canFit(int i) {
            return this.mRemainingItems >= i;
        }

        public int remainingItems() {
            return this.mRemainingItems;
        }
    }

    public static List<SectionedItemList> getTruncatedCopy(List<SectionedItemList> list) {
        TruncateCounter truncateCounter = new TruncateCounter(100);
        ArrayList arrayList = new ArrayList();
        for (SectionedItemList sectionedItemList : list) {
            arrayList.add(SectionedItemList.create(truncate(sectionedItemList.getItemList(), truncateCounter), sectionedItemList.getHeader().toCharSequence()));
            if (truncateCounter.remainingItems() <= 0) {
                break;
            }
        }
        return arrayList;
    }

    public static ItemList truncate(ItemList itemList, TruncateCounter truncateCounter) {
        ItemList.Builder builder = new ItemList.Builder(itemList);
        builder.clearItems();
        for (Item item : itemList.getItems()) {
            if (!(item instanceof ConversationItem)) {
                if (!truncateCounter.canFit(1)) {
                    break;
                }
                builder.addItem(item);
                truncateCounter.decrement();
            } else {
                ConversationItem conversationItem = (ConversationItem) item;
                if (!truncateCounter.canFit(2)) {
                    break;
                }
                ConversationItem.Builder builder2 = new ConversationItem.Builder(conversationItem);
                int iMin = Math.min(truncateCounter.decrement(), 10);
                int size = conversationItem.getMessages().size();
                int iMin2 = Math.min(size, iMin);
                builder2.setMessages(conversationItem.getMessages().subList(size - iMin2, size));
                builder.addItem(builder2.build());
                truncateCounter.decrement(iMin2);
            }
        }
        return builder.build();
    }
}
