package org.telegram.p029ui;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.ActionBar;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ActionBar.ThemeDescription;
import org.telegram.p029ui.Cells.EditTextSettingsCell;
import org.telegram.p029ui.Cells.TextCheckCell;
import org.telegram.p029ui.Cells.TextInfoPrivacyCell;
import org.telegram.p029ui.Cells.TextSettingsCell;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.RecyclerListView;

/* JADX INFO: loaded from: classes6.dex */
public class QuickRepliesSettingsActivity extends BaseFragment {
    private int explanationRow;
    private ListAdapter listAdapter;
    private RecyclerListView listView;
    private int reply1Row;
    private int reply2Row;
    private int reply3Row;
    private int reply4Row;
    private int rowCount;
    private EditTextSettingsCell[] textCells = new EditTextSettingsCell[4];

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        this.reply1Row = 0;
        int i = 1 + 1;
        this.reply2Row = 1;
        this.reply3Row = i;
        this.reply4Row = i + 1;
        this.rowCount = i + 3;
        this.explanationRow = i + 2;
        return true;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setBackButtonImage(C2888R.drawable.ic_ab_back);
        this.actionBar.setTitle(LocaleController.getString(C2888R.string.VoipQuickReplies));
        if (AndroidUtilities.isTablet()) {
            this.actionBar.setOccupyStatusBar(false);
        }
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.QuickRepliesSettingsActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    QuickRepliesSettingsActivity.this.finishFragment();
                }
            }
        });
        this.listAdapter = new ListAdapter(context);
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        FrameLayout frameLayout2 = (FrameLayout) this.fragmentView;
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        recyclerListView.setSections();
        this.listView.setVerticalScrollBarEnabled(false);
        this.listView.setLayoutManager(new LinearLayoutManager(context, 1, false));
        frameLayout2.addView(this.listView, LayoutHelper.createFrame(-1, -1, 51));
        this.listView.setAdapter(this.listAdapter);
        this.actionBar.setAdaptiveBackground(this.listView);
        return this.fragmentView;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        int i = 0;
        SharedPreferences.Editor editorEdit = getParentActivity().getSharedPreferences("mainconfig", 0).edit();
        while (true) {
            EditTextSettingsCell[] editTextSettingsCellArr = this.textCells;
            if (i < editTextSettingsCellArr.length) {
                EditTextSettingsCell editTextSettingsCell = editTextSettingsCellArr[i];
                if (editTextSettingsCell != null) {
                    String string = editTextSettingsCell.getTextView().getText().toString();
                    if (!TextUtils.isEmpty(string)) {
                        editorEdit.putString("quick_reply_msg" + (i + 1), string);
                    } else {
                        editorEdit.remove("quick_reply_msg" + (i + 1));
                    }
                }
                i++;
            } else {
                editorEdit.apply();
                return;
            }
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            listAdapter.notifyDataSetChanged();
        }
    }

    private class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return QuickRepliesSettingsActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            String string;
            String str;
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 0) {
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                textInfoPrivacyCell.setBackgroundDrawable(Theme.getThemedDrawableByKey(this.mContext, C2888R.drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow));
                textInfoPrivacyCell.setText(LocaleController.getString(C2888R.string.VoipQuickRepliesExplain));
                return;
            }
            if (itemViewType == 1) {
                return;
            }
            if (itemViewType != 4) {
                switch (itemViewType) {
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                        EditTextSettingsCell editTextSettingsCell = (EditTextSettingsCell) viewHolder.itemView;
                        if (i == QuickRepliesSettingsActivity.this.reply1Row) {
                            string = LocaleController.getString(C2888R.string.QuickReplyDefault1);
                            str = "quick_reply_msg1";
                        } else if (i == QuickRepliesSettingsActivity.this.reply2Row) {
                            string = LocaleController.getString(C2888R.string.QuickReplyDefault2);
                            str = "quick_reply_msg2";
                        } else if (i == QuickRepliesSettingsActivity.this.reply3Row) {
                            string = LocaleController.getString(C2888R.string.QuickReplyDefault3);
                            str = "quick_reply_msg3";
                        } else if (i == QuickRepliesSettingsActivity.this.reply4Row) {
                            string = LocaleController.getString(C2888R.string.QuickReplyDefault4);
                            str = "quick_reply_msg4";
                        } else {
                            string = null;
                            str = null;
                        }
                        editTextSettingsCell.setTextAndHint(QuickRepliesSettingsActivity.this.getParentActivity().getSharedPreferences("mainconfig", 0).getString(str, _UrlKt.FRAGMENT_ENCODE_SET), string, i != QuickRepliesSettingsActivity.this.reply4Row);
                        break;
                }
                return;
            }
            ((TextCheckCell) viewHolder.itemView).setTextAndCheck(LocaleController.getString(C2888R.string.AllowCustomQuickReply), QuickRepliesSettingsActivity.this.getParentActivity().getSharedPreferences("mainconfig", 0).getBoolean("quick_reply_allow_custom", true), false);
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int adapterPosition = viewHolder.getAdapterPosition();
            return adapterPosition == QuickRepliesSettingsActivity.this.reply1Row || adapterPosition == QuickRepliesSettingsActivity.this.reply2Row || adapterPosition == QuickRepliesSettingsActivity.this.reply3Row || adapterPosition == QuickRepliesSettingsActivity.this.reply4Row;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View textInfoPrivacyCell;
            if (i == 0) {
                textInfoPrivacyCell = new TextInfoPrivacyCell(this.mContext);
            } else if (i == 1) {
                textInfoPrivacyCell = new TextSettingsCell(this.mContext);
                textInfoPrivacyCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            } else {
                switch (i) {
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                        textInfoPrivacyCell = new EditTextSettingsCell(this.mContext);
                        textInfoPrivacyCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                        QuickRepliesSettingsActivity.this.textCells[i - 9] = textInfoPrivacyCell;
                        break;
                    default:
                        textInfoPrivacyCell = new TextCheckCell(this.mContext);
                        textInfoPrivacyCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                        break;
                }
            }
            textInfoPrivacyCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(textInfoPrivacyCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == QuickRepliesSettingsActivity.this.explanationRow) {
                return 0;
            }
            if (i == QuickRepliesSettingsActivity.this.reply1Row || i == QuickRepliesSettingsActivity.this.reply2Row || i == QuickRepliesSettingsActivity.this.reply3Row || i == QuickRepliesSettingsActivity.this.reply4Row) {
                return (i - QuickRepliesSettingsActivity.this.reply1Row) + 9;
            }
            return 1;
        }
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public ArrayList getThemeDescriptions() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextSettingsCell.class, TextCheckCell.class, EditTextSettingsCell.class}, null, null, null, Theme.key_windowBackgroundWhite));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, Theme.key_actionBarDefault));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        int i = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{EditTextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_HINTTEXTCOLOR, new Class[]{EditTextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteHintText));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteValueText));
        return arrayList;
    }
}
