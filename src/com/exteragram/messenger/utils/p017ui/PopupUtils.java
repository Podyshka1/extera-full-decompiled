package com.exteragram.messenger.utils.p017ui;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.function.Function;
import java.util.function.IntFunction;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.RadioColorCell;
import p022j$.util.Collection;
import p022j$.util.function.Function$CC;

/* JADX INFO: loaded from: classes4.dex */
public abstract class PopupUtils {

    public interface OnItemClickListener {
        void onClick(int i);
    }

    public static void showDialog(CharSequence[] charSequenceArr, String str, int i, Context context, OnItemClickListener onItemClickListener) {
        showDialog(charSequenceArr, null, str, i, context, onItemClickListener, null, true);
    }

    public static void showDialog(CharSequence[] charSequenceArr, int[] iArr, String str, int i, Context context, OnItemClickListener onItemClickListener) {
        showDialog(charSequenceArr, iArr, str, i, context, onItemClickListener, null, true);
    }

    public static void showDialog(CharSequence[] charSequenceArr, int[] iArr, String str, int i, Context context, final OnItemClickListener onItemClickListener, Theme.ResourcesProvider resourcesProvider, boolean z) {
        final AlertDialog.Builder builder = new AlertDialog.Builder(context, resourcesProvider);
        builder.setTitle(str);
        if (z) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            builder.setView(linearLayout);
            int i2 = 0;
            while (i2 < charSequenceArr.length) {
                RadioColorCell radioColorCell = new RadioColorCell(context);
                radioColorCell.setPadding(AndroidUtilities.m1124dp(4.0f), 0, AndroidUtilities.m1124dp(4.0f), 0);
                radioColorCell.setTag(Integer.valueOf(i2));
                radioColorCell.setCheckColor(Theme.getColor(Theme.key_radioBackground, resourcesProvider), Theme.getColor(Theme.key_dialogRadioBackgroundChecked, resourcesProvider));
                radioColorCell.setTextAndValue(charSequenceArr[i2], i == i2);
                radioColorCell.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector), 2));
                linearLayout.addView(radioColorCell);
                radioColorCell.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.utils.ui.PopupUtils$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        PopupUtils.m2811$r8$lambda$mmJcbiSq33fgrEuatbB4zTeZuA(builder, onItemClickListener, view);
                    }
                });
                i2++;
            }
        } else {
            if (iArr != null) {
                builder.setItems(charSequenceArr, iArr, new DialogInterface.OnClickListener() { // from class: com.exteragram.messenger.utils.ui.PopupUtils$$ExternalSyntheticLambda1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        PopupUtils.$r8$lambda$82yGHJGHEfp_DRvEkaoSvyOG5NY(builder, onItemClickListener, dialogInterface, i3);
                    }
                });
            } else {
                builder.setItems(charSequenceArr, new DialogInterface.OnClickListener() { // from class: com.exteragram.messenger.utils.ui.PopupUtils$$ExternalSyntheticLambda2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        PopupUtils.m2809$r8$lambda$6jb6sQCYPJdYYKDI25r3PRtHZ4(builder, onItemClickListener, dialogInterface, i3);
                    }
                });
            }
            builder.create();
        }
        builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
        builder.show();
    }

    /* JADX INFO: renamed from: $r8$lambda$mmJcbiSq33fgrEuatbB4zTeZu-A, reason: not valid java name */
    public static /* synthetic */ void m2811$r8$lambda$mmJcbiSq33fgrEuatbB4zTeZuA(AlertDialog.Builder builder, OnItemClickListener onItemClickListener, View view) {
        Integer num = (Integer) view.getTag();
        builder.getDismissRunnable().run();
        onItemClickListener.onClick(num.intValue());
    }

    public static /* synthetic */ void $r8$lambda$82yGHJGHEfp_DRvEkaoSvyOG5NY(AlertDialog.Builder builder, OnItemClickListener onItemClickListener, DialogInterface dialogInterface, int i) {
        builder.getDismissRunnable().run();
        onItemClickListener.onClick(i);
    }

    /* JADX INFO: renamed from: $r8$lambda$6jb6sQCYPJdYYKDI25r3PRtH-Z4, reason: not valid java name */
    public static /* synthetic */ void m2809$r8$lambda$6jb6sQCYPJdYYKDI25r3PRtHZ4(AlertDialog.Builder builder, OnItemClickListener onItemClickListener, DialogInterface dialogInterface, int i) {
        builder.getDismissRunnable().run();
        onItemClickListener.onClick(i);
    }

    /* JADX INFO: renamed from: $r8$lambda$RTfkaKFFZM5qIJnQKtbp3r-qWks, reason: not valid java name */
    public static /* synthetic */ CharSequence[] m2810$r8$lambda$RTfkaKFFZM5qIJnQKtbp3rqWks(int i) {
        return new CharSequence[i];
    }

    public static void showDialogWithoutRadio(ArrayList arrayList, String str, Context context, OnItemClickListener onItemClickListener) {
        showDialog((CharSequence[]) Collection.EL.stream(arrayList).map(new Function() { // from class: com.exteragram.messenger.utils.ui.PopupUtils$$ExternalSyntheticLambda3
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return String.valueOf((CharSequence) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }).toArray(new IntFunction() { // from class: com.exteragram.messenger.utils.ui.PopupUtils$$ExternalSyntheticLambda4
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                return PopupUtils.m2810$r8$lambda$RTfkaKFFZM5qIJnQKtbp3rqWks(i);
            }
        }), null, str, -1, context, onItemClickListener, null, false);
    }
}
