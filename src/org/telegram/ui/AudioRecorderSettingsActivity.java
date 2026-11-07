package org.telegram.ui;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import org.telegram.messenger.C2807R;
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
import org.telegram.utils.recorder.audio.AudioRecordingSession;
import org.telegram.utils.settings.EnumSetting;
import org.telegram.utils.settings.SharedSettings;

/* JADX INFO: loaded from: classes6.dex */
public class AudioRecorderSettingsActivity extends BaseFragment {
    private ListAdapter adapter;
    private RecyclerListView listView;

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.actionBar.setBackButtonImage(C2807R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setTitle(LocaleController.getString(C2807R.string.AudioRecorderSettings));
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.AudioRecorderSettingsActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    AudioRecorderSettingsActivity.this.finishFragment();
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
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.AudioRecorderSettingsActivity$$ExternalSyntheticLambda0
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
            SharedSettings.audioRecorderV2Enabled.toggle();
            this.adapter.notifyDataSetChanged();
        } else if (SharedSettings.audioRecorderV2Enabled.get() && i == 2) {
            showNoiseSuppressionChoice();
        }
    }

    private void showNoiseSuppressionChoice() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.getString(C2807R.string.AudioRecorderNoiseSuppression));
        builder.setItems(new CharSequence[]{LocaleController.getString(C2807R.string.AudioRecorderNoiseSuppressionOff), LocaleController.getString(C2807R.string.AudioRecorderNoiseSuppressionRNNoise)}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.AudioRecorderSettingsActivity$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.lambda$showNoiseSuppressionChoice$1(dialogInterface, i);
            }
        });
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showNoiseSuppressionChoice$1(DialogInterface dialogInterface, int i) {
        AudioRecordingSession.NoiseSuppression noiseSuppression;
        EnumSetting<AudioRecordingSession.NoiseSuppression> enumSetting = SharedSettings.audioRecorderNoiseSuppression;
        if (i == 0) {
            noiseSuppression = AudioRecordingSession.NoiseSuppression.DISABLED;
        } else {
            noiseSuppression = AudioRecordingSession.NoiseSuppression.RNNOISE;
        }
        enumSetting.set(noiseSuppression);
        this.adapter.notifyItemChanged(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String noiseSuppressionLabel(AudioRecordingSession.NoiseSuppression noiseSuppression) {
        int i;
        if (noiseSuppression == AudioRecordingSession.NoiseSuppression.RNNOISE) {
            i = C2807R.string.AudioRecorderNoiseSuppressionRNNoise;
        } else {
            i = C2807R.string.AudioRecorderNoiseSuppressionOff;
        }
        return LocaleController.getString(i);
    }

    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private final Context context;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == 0) {
                return 0;
            }
            if (i == 1) {
                return 1;
            }
            return i == 2 ? 2 : 3;
        }

        private ListAdapter(Context context) {
            this.context = context;
        }

        @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int adapterPosition = viewHolder.getAdapterPosition();
            if (adapterPosition == 1) {
                return true;
            }
            return SharedSettings.audioRecorderV2Enabled.get() && adapterPosition == 2;
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
            boolean z = SharedSettings.audioRecorderV2Enabled.get();
            if (viewHolder.getItemViewType() == 0) {
                ((HeaderCell) viewHolder.itemView).setText(LocaleController.getString(C2807R.string.AudioRecorderGeneral));
                return;
            }
            if (viewHolder.getItemViewType() == 1) {
                ((TextCheckCell) viewHolder.itemView).setTextAndCheck(LocaleController.getString(C2807R.string.AudioRecorderUseNewRecorder), z, false);
                return;
            }
            int itemViewType = viewHolder.getItemViewType();
            View view = viewHolder.itemView;
            if (itemViewType == 2) {
                TextSettingsCell textSettingsCell = (TextSettingsCell) view;
                textSettingsCell.setEnabled(z);
                textSettingsCell.setTextAndValue(LocaleController.getString(C2807R.string.AudioRecorderNoiseSuppression), AudioRecorderSettingsActivity.noiseSuppressionLabel((AudioRecordingSession.NoiseSuppression) SharedSettings.audioRecorderNoiseSuppression.get()), false);
                return;
            }
            ((TextInfoPrivacyCell) view).setText(LocaleController.getString(C2807R.string.AudioRecorderGeneralInfo));
        }
    }
}
