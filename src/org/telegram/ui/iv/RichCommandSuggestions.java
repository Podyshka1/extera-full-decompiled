package org.telegram.ui.iv;

import android.view.View;
import android.widget.LinearLayout;
import com.android.dx.io.Opcodes;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.iv.RichCommand;

/* JADX INFO: loaded from: classes7.dex */
public class RichCommandSuggestions {
    private RichTextCell backgroundCell;
    private RichTextCell cell;
    private LinearLayout content;
    private final MenuFactory menuFactory;
    private ItemOptions options;
    private final Theme.ResourcesProvider resourcesProvider;
    private ArrayList<RichCommand> shown;

    public interface MenuFactory {
        ItemOptions make(View view);
    }

    public RichCommandSuggestions(MenuFactory menuFactory, Theme.ResourcesProvider resourcesProvider) {
        this.menuFactory = menuFactory;
        this.resourcesProvider = resourcesProvider;
    }

    public void update(RichTextCell richTextCell, String str) {
        ItemOptions itemOptions;
        ItemOptions itemOptions2;
        if (str == null) {
            hide();
            return;
        }
        ArrayList<RichCommand> arrayListMatch = RichCommand.match(str);
        if (arrayListMatch.isEmpty()) {
            hide();
            return;
        }
        setBackgroundCell(richTextCell);
        if (this.cell == richTextCell && arrayListMatch.equals(this.shown) && (itemOptions2 = this.options) != null && itemOptions2.isShown()) {
            return;
        }
        if (this.cell == richTextCell && (itemOptions = this.options) != null && itemOptions.isShown() && this.content != null) {
            this.shown = arrayListMatch;
            populate(richTextCell, arrayListMatch);
            this.options.reposition();
        } else {
            hide();
            setBackgroundCell(richTextCell);
            this.cell = richTextCell;
            this.shown = arrayListMatch;
            show(richTextCell, arrayListMatch);
        }
    }

    private void show(RichTextCell richTextCell, ArrayList<RichCommand> arrayList) {
        LinearLayout linearLayout = new LinearLayout(richTextCell.getContext());
        this.content = linearLayout;
        linearLayout.setOrientation(1);
        populate(richTextCell, arrayList);
        ItemOptions drawScrim = this.menuFactory.make(richTextCell.getEditText()).dontFocus().setDimAlpha(0).setDrawScrim(false);
        drawScrim.addView(this.content, LayoutHelper.createLinear(Opcodes.REM_INT_LIT8, -2));
        drawScrim.setMaxHeight(AndroidUtilities.dp(240.0f));
        drawScrim.setGravity(3);
        drawScrim.translate(-AndroidUtilities.dp(12.0f), 0.0f);
        drawScrim.setOnDismiss(new Runnable() { // from class: org.telegram.ui.iv.RichCommandSuggestions$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$show$0();
            }
        });
        drawScrim.followScrimView();
        drawScrim.show();
        this.options = drawScrim;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$0() {
        this.options = null;
        this.content = null;
        this.shown = null;
        this.cell = null;
        setBackgroundCell(null);
    }

    private void populate(final RichTextCell richTextCell, ArrayList<RichCommand> arrayList) {
        LinearLayout linearLayout = this.content;
        if (linearLayout == null) {
            return;
        }
        linearLayout.removeAllViews();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            RichCommand richCommand = arrayList.get(i);
            i++;
            final RichCommand richCommand2 = richCommand;
            RichCommand.View view = new RichCommand.View(richTextCell.getContext(), richCommand2, this.resourcesProvider);
            view.setPadding(AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(12.0f), 0);
            view.setBackground(Theme.createRadSelectorDrawable(Theme.getColor(Theme.key_listSelector, this.resourcesProvider), 0, 0));
            view.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.iv.RichCommandSuggestions$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$populate$1(richTextCell, richCommand2, view2);
                }
            });
            this.content.addView(view, LayoutHelper.createLinear(-1, 48));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$populate$1(RichTextCell richTextCell, RichCommand richCommand, View view) {
        hide();
        richTextCell.selectCommand(richCommand);
    }

    public void hide() {
        setBackgroundCell(null);
        ItemOptions itemOptions = this.options;
        if (itemOptions != null) {
            itemOptions.dismiss();
            this.options = null;
        }
        this.content = null;
        this.shown = null;
        this.cell = null;
    }

    private void setBackgroundCell(RichTextCell richTextCell) {
        RichTextCell richTextCell2 = this.backgroundCell;
        if (richTextCell2 == richTextCell) {
            return;
        }
        if (richTextCell2 != null) {
            richTextCell2.setShowCommandBackground(false);
        }
        this.backgroundCell = richTextCell;
        if (richTextCell != null) {
            richTextCell.setShowCommandBackground(true);
        }
    }
}
