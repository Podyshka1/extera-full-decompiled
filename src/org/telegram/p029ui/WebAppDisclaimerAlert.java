package org.telegram.p029ui;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.exoplayer2.util.Consumer;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.browser.Browser;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.CheckBoxCell;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes6.dex */
public class WebAppDisclaimerAlert {
    private AlertDialog alert;
    private CheckBoxCell cell;
    private TextView positiveButton;

    public static void show(final Context context, final Consumer consumer, TLRPC.User user, final Runnable runnable) {
        final WebAppDisclaimerAlert webAppDisclaimerAlert = new WebAppDisclaimerAlert();
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(LocaleController.getString(C2888R.string.TermsOfUse));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        TextView textView = new TextView(context);
        textView.setLetterSpacing(0.025f);
        textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        textView.setTextSize(1, 14.0f);
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 0, 24, 0, 24, 0));
        CheckBoxCell checkBoxCell = new CheckBoxCell(context, 1, null);
        webAppDisclaimerAlert.cell = checkBoxCell;
        checkBoxCell.getTextView().getLayoutParams().width = -1;
        webAppDisclaimerAlert.cell.getTextView().setTextSize(1, 14.0f);
        linearLayout.addView(webAppDisclaimerAlert.cell, LayoutHelper.createLinear(-1, 48, 3, 8, 0, 8, 0));
        final boolean[] zArr = new boolean[1];
        textView.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.BotWebAppDisclaimerSubtitle)));
        webAppDisclaimerAlert.cell.setText(AndroidUtilities.replaceSingleTag(LocaleController.getString(C2888R.string.BotWebAppDisclaimerCheck), new Runnable() { // from class: org.telegram.ui.WebAppDisclaimerAlert$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Browser.openUrl(context, LocaleController.getString(C2888R.string.WebAppDisclaimerUrl));
            }
        }), _UrlKt.FRAGMENT_ENCODE_SET, false, false);
        builder.setView(linearLayout);
        builder.setPositiveButton(LocaleController.getString(C2888R.string.Continue), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.WebAppDisclaimerAlert$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                WebAppDisclaimerAlert.$r8$lambda$ieZxLpbNUQex9tFQgbaeiuh1B5I(consumer, zArr, alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.WebAppDisclaimerAlert$$ExternalSyntheticLambda2
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                alertDialog.dismiss();
            }
        });
        AlertDialog alertDialogCreate = builder.create();
        webAppDisclaimerAlert.alert = alertDialogCreate;
        alertDialogCreate.show();
        TextView textView2 = (TextView) webAppDisclaimerAlert.alert.getButton(-1);
        webAppDisclaimerAlert.positiveButton = textView2;
        textView2.setEnabled(false);
        webAppDisclaimerAlert.positiveButton.setAlpha(0.5f);
        webAppDisclaimerAlert.cell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.WebAppDisclaimerAlert$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WebAppDisclaimerAlert.m20517$r8$lambda$ICLm3wirtfJP4fPzJ1h4N5G00Y(this.f$0, view);
            }
        });
        webAppDisclaimerAlert.cell.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector), 7));
        webAppDisclaimerAlert.alert.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.WebAppDisclaimerAlert$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                WebAppDisclaimerAlert.$r8$lambda$LOJMvwvnO12EwW70_zmwaJs0cc4(zArr, runnable, dialogInterface);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$ieZxLpbNUQex9tFQgbaeiuh1B5I(Consumer consumer, boolean[] zArr, AlertDialog alertDialog, int i) {
        consumer.accept(Boolean.TRUE);
        zArr[0] = true;
        alertDialog.dismiss();
    }

    /* JADX INFO: renamed from: $r8$lambda$ICLm3wirtfJP4fPzJ1h4N-5G00Y, reason: not valid java name */
    public static /* synthetic */ void m20517$r8$lambda$ICLm3wirtfJP4fPzJ1h4N5G00Y(WebAppDisclaimerAlert webAppDisclaimerAlert, View view) {
        webAppDisclaimerAlert.cell.setChecked(!r3.isChecked(), true);
        webAppDisclaimerAlert.positiveButton.setEnabled(webAppDisclaimerAlert.cell.isChecked());
        webAppDisclaimerAlert.positiveButton.animate().alpha(webAppDisclaimerAlert.cell.isChecked() ? 1.0f : 0.5f).start();
    }

    public static /* synthetic */ void $r8$lambda$LOJMvwvnO12EwW70_zmwaJs0cc4(boolean[] zArr, Runnable runnable, DialogInterface dialogInterface) {
        if (zArr[0]) {
            return;
        }
        zArr[0] = true;
        if (runnable != null) {
            runnable.run();
        }
    }
}
