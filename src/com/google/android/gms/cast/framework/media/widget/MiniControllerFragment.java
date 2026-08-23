package com.google.android.gms.cast.framework.media.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.framework.C1331R;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.framework.media.uicontroller.UIMediaController;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzpm;
import com.google.android.gms.internal.cast.zzr;

/* JADX INFO: loaded from: classes4.dex */
public class MiniControllerFragment extends Fragment implements ControlButtonsContainer {
    private Logger zza;
    private boolean zzb;
    private int zzc;
    private int zzd;
    private TextView zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int[] zzj;
    private final ImageView[] zzk = new ImageView[3];
    private int zzl;
    private int zzm;
    private int zzn;
    private int zzo;
    private int zzp;
    private int zzq;
    private int zzr;
    private int zzs;
    private int zzt;
    private int zzu;
    private int zzv;
    private int zzw;
    private int zzx;
    private UIMediaController zzy;

    private final void zza(UIMediaController uIMediaController, RelativeLayout relativeLayout, int i, int i2) {
        ImageView imageView = (ImageView) relativeLayout.findViewById(i);
        int i3 = this.zzj[i2];
        if (i3 == C1331R.id.cast_button_type_empty) {
            imageView.setVisibility(4);
            return;
        }
        if (i3 == C1331R.id.cast_button_type_custom) {
            return;
        }
        if (i3 == C1331R.id.cast_button_type_play_pause_toggle) {
            int i4 = this.zzm;
            int i5 = this.zzn;
            int i6 = this.zzo;
            if (this.zzl == 1) {
                i4 = this.zzp;
                i5 = this.zzq;
                i6 = this.zzr;
            }
            Drawable drawableZzb = zzo.zzb(getContext(), this.zzi, i4);
            Drawable drawableZzb2 = zzo.zzb(getContext(), this.zzi, i5);
            Drawable drawableZzb3 = zzo.zzb(getContext(), this.zzi, i6);
            imageView.setImageDrawable(drawableZzb2);
            ProgressBar progressBar = new ProgressBar(getContext());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(8, i);
            layoutParams.addRule(6, i);
            layoutParams.addRule(5, i);
            layoutParams.addRule(7, i);
            layoutParams.addRule(15);
            progressBar.setLayoutParams(layoutParams);
            progressBar.setVisibility(8);
            Drawable indeterminateDrawable = progressBar.getIndeterminateDrawable();
            int i7 = this.zzh;
            if (i7 != 0 && indeterminateDrawable != null) {
                indeterminateDrawable.setColorFilter(i7, PorterDuff.Mode.SRC_IN);
            }
            relativeLayout.addView(progressBar);
            uIMediaController.bindImageViewToPlayPauseToggle(imageView, drawableZzb, drawableZzb2, drawableZzb3, progressBar, true);
            return;
        }
        if (i3 == C1331R.id.cast_button_type_skip_previous) {
            imageView.setImageDrawable(zzo.zzb(getContext(), this.zzi, this.zzs));
            imageView.setContentDescription(getResources().getString(C1331R.string.cast_skip_prev));
            uIMediaController.bindViewToSkipPrev(imageView, 0);
            return;
        }
        if (i3 == C1331R.id.cast_button_type_skip_next) {
            imageView.setImageDrawable(zzo.zzb(getContext(), this.zzi, this.zzt));
            imageView.setContentDescription(getResources().getString(C1331R.string.cast_skip_next));
            uIMediaController.bindViewToSkipNext(imageView, 0);
            return;
        }
        if (i3 == C1331R.id.cast_button_type_rewind_30_seconds) {
            imageView.setImageDrawable(zzo.zzb(getContext(), this.zzi, this.zzu));
            imageView.setContentDescription(getResources().getString(C1331R.string.cast_rewind_30));
            uIMediaController.bindViewToRewind(imageView, NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
        } else if (i3 == C1331R.id.cast_button_type_forward_30_seconds) {
            imageView.setImageDrawable(zzo.zzb(getContext(), this.zzi, this.zzv));
            imageView.setContentDescription(getResources().getString(C1331R.string.cast_forward_30));
            uIMediaController.bindViewToForward(imageView, NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
        } else if (i3 == C1331R.id.cast_button_type_mute_toggle) {
            imageView.setImageDrawable(zzo.zzb(getContext(), this.zzi, this.zzw));
            uIMediaController.bindImageViewToMuteToggle(imageView);
        } else if (i3 == C1331R.id.cast_button_type_closed_caption) {
            imageView.setImageDrawable(zzo.zzb(getContext(), this.zzi, this.zzx));
            uIMediaController.bindViewToClosedCaption(imageView);
        }
    }

    @Override // com.google.android.gms.cast.framework.media.widget.ControlButtonsContainer
    public final ImageView getButtonImageViewAt(int i) {
        return this.zzk[i];
    }

    @Override // com.google.android.gms.cast.framework.media.widget.ControlButtonsContainer
    public final int getButtonSlotCount() {
        return 3;
    }

    @Override // com.google.android.gms.cast.framework.media.widget.ControlButtonsContainer
    public final int getButtonTypeAt(int i) {
        return this.zzj[i];
    }

    @Override // com.google.android.gms.cast.framework.media.widget.ControlButtonsContainer
    public UIMediaController getUIMediaController() {
        return this.zzy;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.zza = new Logger("MiniControllerFragment");
        UIMediaController uIMediaController = new UIMediaController(getActivity());
        this.zzy = uIMediaController;
        View viewInflate = layoutInflater.inflate(C1331R.layout.cast_mini_controller, viewGroup, false);
        viewInflate.setVisibility(8);
        uIMediaController.bindViewVisibilityToMediaSession(viewInflate, 8);
        RelativeLayout relativeLayout = (RelativeLayout) viewInflate.findViewById(C1331R.id.container_current);
        int i = this.zzf;
        if (i != 0) {
            relativeLayout.setBackgroundResource(i);
        }
        ImageView imageView = (ImageView) viewInflate.findViewById(C1331R.id.icon_view);
        TextView textView = (TextView) viewInflate.findViewById(C1331R.id.title_view);
        if (this.zzc != 0) {
            textView.setTextAppearance(getActivity(), this.zzc);
        }
        TextView textView2 = (TextView) viewInflate.findViewById(C1331R.id.subtitle_view);
        this.zze = textView2;
        if (this.zzd != 0) {
            textView2.setTextAppearance(getActivity(), this.zzd);
        }
        ProgressBar progressBar = (ProgressBar) viewInflate.findViewById(C1331R.id.progressBar);
        if (this.zzg != 0) {
            ((LayerDrawable) progressBar.getProgressDrawable()).setColorFilter(this.zzg, PorterDuff.Mode.SRC_IN);
        }
        uIMediaController.bindTextViewToMetadataOfCurrentItem(textView, MediaMetadata.KEY_TITLE);
        uIMediaController.bindTextViewToSmartSubtitle(this.zze);
        uIMediaController.bindProgressBar(progressBar);
        uIMediaController.bindViewToLaunchExpandedController(relativeLayout);
        if (this.zzb) {
            uIMediaController.bindImageViewToImageOfCurrentItem(imageView, new ImageHints(2, getResources().getDimensionPixelSize(C1331R.dimen.cast_mini_controller_icon_width), getResources().getDimensionPixelSize(C1331R.dimen.cast_mini_controller_icon_height)), C1331R.drawable.cast_album_art_placeholder);
        } else {
            imageView.setVisibility(8);
        }
        ImageView[] imageViewArr = this.zzk;
        imageViewArr[0] = (ImageView) relativeLayout.findViewById(C1331R.id.button_0);
        imageViewArr[1] = (ImageView) relativeLayout.findViewById(C1331R.id.button_1);
        imageViewArr[2] = (ImageView) relativeLayout.findViewById(C1331R.id.button_2);
        zza(uIMediaController, relativeLayout, C1331R.id.button_0, 0);
        zza(uIMediaController, relativeLayout, C1331R.id.button_1, 1);
        zza(uIMediaController, relativeLayout, C1331R.id.button_2, 2);
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        UIMediaController uIMediaController = this.zzy;
        if (uIMediaController != null) {
            uIMediaController.dispose();
            this.zzy = null;
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onInflate(Context context, AttributeSet attributeSet, Bundle bundle) {
        super.onInflate(context, attributeSet, bundle);
        if (this.zzj == null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1331R.styleable.CastMiniController, C1331R.attr.castMiniControllerStyle, C1331R.style.CastMiniController);
            this.zzb = typedArrayObtainStyledAttributes.getBoolean(C1331R.styleable.CastMiniController_castShowImageThumbnail, true);
            this.zzc = typedArrayObtainStyledAttributes.getResourceId(C1331R.styleable.CastMiniController_castTitleTextAppearance, 0);
            this.zzd = typedArrayObtainStyledAttributes.getResourceId(C1331R.styleable.CastMiniController_castSubtitleTextAppearance, 0);
            this.zzf = typedArrayObtainStyledAttributes.getResourceId(C1331R.styleable.CastMiniController_castBackground, 0);
            int color = typedArrayObtainStyledAttributes.getColor(C1331R.styleable.CastMiniController_castProgressBarColor, 0);
            this.zzg = color;
            this.zzh = typedArrayObtainStyledAttributes.getColor(C1331R.styleable.CastMiniController_castMiniControllerLoadingIndicatorColor, color);
            this.zzi = typedArrayObtainStyledAttributes.getResourceId(C1331R.styleable.CastMiniController_castButtonColor, 0);
            this.zzm = typedArrayObtainStyledAttributes.getResourceId(C1331R.styleable.CastMiniController_castPlayButtonDrawable, 0);
            this.zzn = typedArrayObtainStyledAttributes.getResourceId(C1331R.styleable.CastMiniController_castPauseButtonDrawable, 0);
            this.zzo = typedArrayObtainStyledAttributes.getResourceId(C1331R.styleable.CastMiniController_castStopButtonDrawable, 0);
            this.zzp = typedArrayObtainStyledAttributes.getResourceId(C1331R.styleable.CastMiniController_castPlayButtonDrawable, 0);
            this.zzq = typedArrayObtainStyledAttributes.getResourceId(C1331R.styleable.CastMiniController_castPauseButtonDrawable, 0);
            this.zzr = typedArrayObtainStyledAttributes.getResourceId(C1331R.styleable.CastMiniController_castStopButtonDrawable, 0);
            this.zzs = typedArrayObtainStyledAttributes.getResourceId(C1331R.styleable.CastMiniController_castSkipPreviousButtonDrawable, 0);
            this.zzt = typedArrayObtainStyledAttributes.getResourceId(C1331R.styleable.CastMiniController_castSkipNextButtonDrawable, 0);
            this.zzu = typedArrayObtainStyledAttributes.getResourceId(C1331R.styleable.CastMiniController_castRewind30ButtonDrawable, 0);
            this.zzv = typedArrayObtainStyledAttributes.getResourceId(C1331R.styleable.CastMiniController_castForward30ButtonDrawable, 0);
            this.zzw = typedArrayObtainStyledAttributes.getResourceId(C1331R.styleable.CastMiniController_castMuteToggleButtonDrawable, 0);
            this.zzx = typedArrayObtainStyledAttributes.getResourceId(C1331R.styleable.CastMiniController_castClosedCaptionsButtonDrawable, 0);
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(C1331R.styleable.CastMiniController_castControlButtons, 0);
            if (resourceId != 0) {
                TypedArray typedArrayObtainTypedArray = context.getResources().obtainTypedArray(resourceId);
                Preconditions.checkArgument(typedArrayObtainTypedArray.length() == 3);
                this.zzj = new int[typedArrayObtainTypedArray.length()];
                for (int i = 0; i < typedArrayObtainTypedArray.length(); i++) {
                    this.zzj[i] = typedArrayObtainTypedArray.getResourceId(i, 0);
                }
                typedArrayObtainTypedArray.recycle();
                if (this.zzb) {
                    this.zzj[0] = C1331R.id.cast_button_type_empty;
                }
                this.zzl = 0;
                for (int i2 : this.zzj) {
                    if (i2 != C1331R.id.cast_button_type_empty) {
                        this.zzl++;
                    }
                }
            } else {
                Logger logger = this.zza;
                if (logger != null) {
                    logger.m289w("Unable to read attribute castControlButtons.", new Object[0]);
                }
                int i3 = C1331R.id.cast_button_type_empty;
                this.zzj = new int[]{i3, i3, i3};
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        zzr.zzb(zzpm.CAF_MINI_CONTROLLER);
    }
}
