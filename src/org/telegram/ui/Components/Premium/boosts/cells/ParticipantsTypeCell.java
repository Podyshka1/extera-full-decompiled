package org.telegram.ui.Components.Premium.boosts.cells;

import android.annotation.SuppressLint;
import android.content.Context;
import java.util.List;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.LocaleController;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes7.dex */
@SuppressLint({"ViewConstructor"})
public class ParticipantsTypeCell extends BaseCell {
    public static int TYPE_ALL = 0;
    public static int TYPE_NEW = 1;
    private int selectedType;

    @Override // org.telegram.ui.Components.Premium.boosts.cells.BaseCell
    public boolean needCheck() {
        return true;
    }

    public ParticipantsTypeCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider);
        this.imageView.setVisibility(8);
    }

    public int getSelectedType() {
        return this.selectedType;
    }

    public void setType(int i, boolean z, boolean z2, List<TLRPC.TL_help_country> list, TLRPC.Chat chat) {
        this.selectedType = i;
        boolean zIsChannelAndNotMegaGroup = ChatObject.isChannelAndNotMegaGroup(chat);
        if (i == TYPE_ALL) {
            this.titleTextView.setText(LocaleController.formatString(zIsChannelAndNotMegaGroup ? C2665R.string.BoostingAllSubscribers : C2665R.string.BoostingAllMembers, new Object[0]));
        } else if (i == TYPE_NEW) {
            this.titleTextView.setText(LocaleController.formatString(zIsChannelAndNotMegaGroup ? C2665R.string.BoostingNewSubscribers : C2665R.string.BoostingNewMembers, new Object[0]));
        }
        this.radioButton.setChecked(z, false);
        setDivider(z2);
        this.subtitleTextView.setTextColor(Theme.getColor(Theme.key_dialogTextBlue2, this.resourcesProvider));
        if (list.size() == 0) {
            setSubtitle(withArrow(LocaleController.getString(C2665R.string.BoostingFromAllCountries)));
            return;
        }
        if (list.size() <= 3) {
            if (list.size() == 1) {
                setSubtitle(withArrow(LocaleController.formatString("BoostingFromAllCountries1", C2665R.string.BoostingFromAllCountries1, list.get(0).default_name)));
                return;
            } else if (list.size() == 2) {
                setSubtitle(withArrow(LocaleController.formatString("BoostingFromAllCountries2", C2665R.string.BoostingFromAllCountries2, list.get(0).default_name, list.get(1).default_name)));
                return;
            } else {
                setSubtitle(withArrow(LocaleController.formatString("BoostingFromAllCountries3", C2665R.string.BoostingFromAllCountries3, list.get(0).default_name, list.get(1).default_name, list.get(2).default_name)));
                return;
            }
        }
        setSubtitle(withArrow(LocaleController.formatPluralString("BoostingFromCountriesCount", list.size(), new Object[0])));
    }
}
