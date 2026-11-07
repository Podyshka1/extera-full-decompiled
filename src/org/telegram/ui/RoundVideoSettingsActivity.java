package org.telegram.ui;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Locale;
import kotlin.time.DurationKt;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.LocaleController;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.HeaderCell;
import org.telegram.ui.Cells.TextCheckCell;
import org.telegram.ui.Cells.TextInfoPrivacyCell;
import org.telegram.ui.Cells.TextSettingsCell;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.utils.camera.roundvideo.RoundVideoSession;
import org.telegram.utils.settings.BooleanSetting;
import org.telegram.utils.settings.EnumSetting;
import org.telegram.utils.settings.SharedSettings;

/* JADX INFO: loaded from: classes6.dex */
public class RoundVideoSettingsActivity extends BaseFragment {
    private static final int[] BITRATES;
    private static final int ROW_COUNT;
    private ListAdapter adapter;
    private RecyclerListView listView;

    public interface ChoiceHandler {
        void onChoice(int i);
    }

    static {
        ROW_COUNT = BuildVars.DEBUG_PRIVATE_VERSION ? 10 : 7;
        BITRATES = new int[]{750000, DurationKt.NANOS_IN_MILLIS, 1200000, 2000000};
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setBackButtonImage(C2665R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setTitle(LocaleController.getString(C2665R.string.RoundVideoSettings));
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.RoundVideoSettingsActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    RoundVideoSettingsActivity.this.finishFragment();
                }
            }
        });
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        this.fragmentView = frameLayout;
        RecyclerListView recyclerListView = new RecyclerListView(context);
        this.listView = recyclerListView;
        recyclerListView.setSections();
        this.actionBar.setAdaptiveBackground(this.listView);
        this.listView.setLayoutManager(new LinearLayoutManager(context));
        this.listView.setVerticalScrollBarEnabled(false);
        RecyclerListView recyclerListView2 = this.listView;
        ListAdapter listAdapter = new ListAdapter(context);
        this.adapter = listAdapter;
        recyclerListView2.setAdapter(listAdapter);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.RoundVideoSettingsActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i) {
                this.f$0.lambda$createView$0(view, i);
            }
        });
        frameLayout.addView(this.listView, LayoutHelper.createFrame(-1, -1.0f));
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(View view, int i) {
        onRowClicked(i);
    }

    private void onRowClicked(int i) {
        if (i == 1) {
            BooleanSetting booleanSetting = SharedSettings.roundVideoCamera2Enabled;
            booleanSetting.set(true ^ booleanSetting.get());
            this.adapter.notifyDataSetChanged();
            return;
        }
        if (!SharedSettings.roundVideoCamera2Enabled.get()) {
            return;
        }
        int i2 = 0;
        if (i == 2) {
            showChoice(C2665R.string.RoundVideoOutputResolution, new CharSequence[]{"480p", "360p"}, new ChoiceHandler() { // from class: org.telegram.ui.RoundVideoSettingsActivity$$ExternalSyntheticLambda1
                @Override // org.telegram.ui.RoundVideoSettingsActivity.ChoiceHandler
                public final void onChoice(int i3) {
                    RoundVideoSettingsActivity.$r8$lambda$LefkhkHlKFc1UpW5L2A0vKnSym4(i3);
                }
            });
            return;
        }
        if (i == 3) {
            showChoice(C2665R.string.RoundVideoCameraResolution, new CharSequence[]{LocaleController.getString(C2665R.string.RoundVideoCameraResolutionHigh), LocaleController.getString(C2665R.string.RoundVideoCameraResolutionMedium), LocaleController.getString(C2665R.string.RoundVideoCameraResolutionLow)}, new ChoiceHandler() { // from class: org.telegram.ui.RoundVideoSettingsActivity$$ExternalSyntheticLambda2
                @Override // org.telegram.ui.RoundVideoSettingsActivity.ChoiceHandler
                public final void onChoice(int i3) {
                    SharedSettings.roundVideoCameraResolution.set(RoundVideoSession.CameraResolution.values()[i3]);
                }
            });
            return;
        }
        if (i == 4) {
            showChoice(C2665R.string.RoundVideoFrameRate, new CharSequence[]{"30 FPS", "60 FPS"}, new ChoiceHandler() { // from class: org.telegram.ui.RoundVideoSettingsActivity$$ExternalSyntheticLambda3
                @Override // org.telegram.ui.RoundVideoSettingsActivity.ChoiceHandler
                public final void onChoice(int i3) {
                    RoundVideoSettingsActivity.m19573$r8$lambda$mwVtg9OFRksN5cckhVRhc8oNeI(i3);
                }
            });
            return;
        }
        if (i != 5) {
            if (i == 8) {
                BooleanSetting booleanSetting2 = SharedSettings.roundVideoComposition;
                booleanSetting2.set(true ^ booleanSetting2.get());
                this.adapter.notifyItemChanged(i);
                return;
            }
            return;
        }
        CharSequence[] charSequenceArr = new CharSequence[BITRATES.length];
        while (true) {
            int[] iArr = BITRATES;
            if (i2 < iArr.length - (!BuildVars.DEBUG_PRIVATE_VERSION ? 1 : 0)) {
                charSequenceArr[i2] = formatBitrate(iArr[i2]);
                i2++;
            } else {
                showChoice(C2665R.string.RoundVideoBitrate, charSequenceArr, new ChoiceHandler() { // from class: org.telegram.ui.RoundVideoSettingsActivity$$ExternalSyntheticLambda4
                    @Override // org.telegram.ui.RoundVideoSettingsActivity.ChoiceHandler
                    public final void onChoice(int i3) {
                        SharedSettings.roundVideoVideoBitrate.set(RoundVideoSettingsActivity.BITRATES[i3]);
                    }
                });
                return;
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$LefkhkHlKFc1UpW5L2A0vKnSym4(int i) {
        RoundVideoSession.OutputResolution outputResolution;
        EnumSetting<RoundVideoSession.OutputResolution> enumSetting = SharedSettings.roundVideoOutputResolution;
        if (i == 0) {
            outputResolution = RoundVideoSession.OutputResolution.P480;
        } else {
            outputResolution = RoundVideoSession.OutputResolution.P360;
        }
        enumSetting.set(outputResolution);
    }

    /* JADX INFO: renamed from: $r8$lambda$mwVtg9OFRksN-5cckhVRhc8oNeI, reason: not valid java name */
    public static /* synthetic */ void m19573$r8$lambda$mwVtg9OFRksN5cckhVRhc8oNeI(int i) {
        RoundVideoSession.FrameRate frameRate;
        EnumSetting<RoundVideoSession.FrameRate> enumSetting = SharedSettings.roundVideoFrameRate;
        if (i == 0) {
            frameRate = RoundVideoSession.FrameRate.FPS_30;
        } else {
            frameRate = RoundVideoSession.FrameRate.FPS_60;
        }
        enumSetting.set(frameRate);
    }

    private void showChoice(int i, CharSequence[] charSequenceArr, final ChoiceHandler choiceHandler) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.getString(i));
        builder.setItems(charSequenceArr, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.RoundVideoSettingsActivity$$ExternalSyntheticLambda5
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                this.f$0.lambda$showChoice$5(choiceHandler, dialogInterface, i2);
            }
        });
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showChoice$5(ChoiceHandler choiceHandler, DialogInterface dialogInterface, int i) {
        choiceHandler.onChoice(i);
        this.adapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String formatBitrate(int i) {
        if (i % DurationKt.NANOS_IN_MILLIS == 0) {
            return (i / DurationKt.NANOS_IN_MILLIS) + " Mbps";
        }
        if (i > 1000000) {
            return String.format(Locale.US, "%.1f Mbps", Float.valueOf(i / 1000000.0f));
        }
        return (i / 1000) + " kbps";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String cameraResolutionLabel(RoundVideoSession.CameraResolution cameraResolution) {
        if (cameraResolution == RoundVideoSession.CameraResolution.HIGH) {
            return LocaleController.getString(C2665R.string.RoundVideoCameraResolutionHigh);
        }
        if (cameraResolution == RoundVideoSession.CameraResolution.MEDIUM) {
            return LocaleController.getString(C2665R.string.RoundVideoCameraResolutionMedium);
        }
        return LocaleController.getString(C2665R.string.RoundVideoCameraResolutionLow);
    }

    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private final Context context;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == 0 || i == 7) {
                return 0;
            }
            if (i == 1 || i == 8) {
                return 1;
            }
            return (i == 6 || i == 9) ? 3 : 2;
        }

        private ListAdapter(Context context) {
            this.context = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return RoundVideoSettingsActivity.ROW_COUNT;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int adapterPosition = viewHolder.getAdapterPosition();
            if (adapterPosition == 1) {
                return true;
            }
            if (SharedSettings.roundVideoCamera2Enabled.get()) {
                return adapterPosition == 2 || adapterPosition == 3 || adapterPosition == 4 || adapterPosition == 5 || adapterPosition == 8;
            }
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View textInfoPrivacyCell;
            if (i == 0) {
                textInfoPrivacyCell = new HeaderCell(this.context);
            } else if (i == 1) {
                textInfoPrivacyCell = new TextCheckCell(this.context);
            } else if (i == 2) {
                TextSettingsCell textSettingsCell = new TextSettingsCell(this.context);
                textSettingsCell.setCanDisable(true);
                textInfoPrivacyCell = textSettingsCell;
            } else {
                textInfoPrivacyCell = new TextInfoPrivacyCell(this.context);
            }
            textInfoPrivacyCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(textInfoPrivacyCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            String string;
            String string2;
            boolean z = SharedSettings.roundVideoCamera2Enabled.get();
            if (viewHolder.getItemViewType() == 0) {
                HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                if (i == 0) {
                    string2 = LocaleController.getString(C2665R.string.RoundVideoGeneral);
                } else {
                    string2 = LocaleController.getString(C2665R.string.RoundVideoComposition);
                }
                headerCell.setText(string2);
                return;
            }
            if (viewHolder.getItemViewType() == 1) {
                TextCheckCell textCheckCell = (TextCheckCell) viewHolder.itemView;
                textCheckCell.setEnabled(i == 1 || z);
                if (i == 1) {
                    textCheckCell.setTextAndCheck(LocaleController.getString(C2665R.string.RoundVideoUseNewRecorder), z, false);
                    return;
                } else {
                    textCheckCell.setTextAndCheck(LocaleController.getString(C2665R.string.RoundVideoCompositionEnabled), SharedSettings.roundVideoComposition.get(), false);
                    return;
                }
            }
            int itemViewType = viewHolder.getItemViewType();
            View view = viewHolder.itemView;
            if (itemViewType == 2) {
                TextSettingsCell textSettingsCell = (TextSettingsCell) view;
                textSettingsCell.setEnabled(z);
                if (i == 2) {
                    textSettingsCell.setTextAndValue(LocaleController.getString(C2665R.string.RoundVideoOutputResolution), ((RoundVideoSession.OutputResolution) SharedSettings.roundVideoOutputResolution.get()).getSize() + "p", true);
                    return;
                }
                if (i == 3) {
                    textSettingsCell.setTextAndValue(LocaleController.getString(C2665R.string.RoundVideoCameraResolution), RoundVideoSettingsActivity.cameraResolutionLabel((RoundVideoSession.CameraResolution) SharedSettings.roundVideoCameraResolution.get()), true);
                    return;
                }
                if (i == 4) {
                    textSettingsCell.setTextAndValue(LocaleController.getString(C2665R.string.RoundVideoFrameRate), ((RoundVideoSession.FrameRate) SharedSettings.roundVideoFrameRate.get()).getValue() + " FPS", true);
                    return;
                }
                textSettingsCell.setTextAndValue(LocaleController.getString(C2665R.string.RoundVideoBitrate), RoundVideoSettingsActivity.formatBitrate(SharedSettings.roundVideoVideoBitrate.get()), false);
                return;
            }
            TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) view;
            if (i == 6) {
                string = LocaleController.getString(C2665R.string.RoundVideoGeneralInfo);
            } else {
                string = LocaleController.getString(C2665R.string.RoundVideoCompositionInfo);
            }
            textInfoPrivacyCell.setText(string);
        }
    }
}
