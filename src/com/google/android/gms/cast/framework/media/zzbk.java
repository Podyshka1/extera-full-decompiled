package com.google.android.gms.cast.framework.media;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.RadioButton;
import android.widget.TextView;
import com.google.android.gms.cast.MediaTrack;
import com.google.android.gms.cast.framework.C1331R;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbk extends ArrayAdapter implements View.OnClickListener {
    private final Context zza;
    private int zzb;

    public zzbk(Context context, List list, int i) {
        super(context, C1331R.layout.cast_tracks_chooser_dialog_row_layout, list == null ? new ArrayList() : list);
        this.zza = context;
        this.zzb = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x008b  */
    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View getView(int i, View view, ViewGroup viewGroup) {
        zzbj zzbjVar;
        if (view == null) {
            view = ((LayoutInflater) Preconditions.checkNotNull((LayoutInflater) this.zza.getSystemService("layout_inflater"))).inflate(C1331R.layout.cast_tracks_chooser_dialog_row_layout, viewGroup, false);
            zzbjVar = new zzbj(this, (TextView) view.findViewById(C1331R.id.text), (RadioButton) view.findViewById(C1331R.id.radio), null);
            view.setTag(zzbjVar);
        } else {
            zzbjVar = (zzbj) Preconditions.checkNotNull((zzbj) view.getTag());
        }
        RadioButton radioButton = zzbjVar.zzb;
        radioButton.setTag(Integer.valueOf(i));
        radioButton.setChecked(this.zzb == i);
        view.setOnClickListener(this);
        MediaTrack mediaTrack = (MediaTrack) Preconditions.checkNotNull((MediaTrack) getItem(i));
        String name = mediaTrack.getName();
        Locale languageLocale = mediaTrack.getLanguageLocale();
        if (TextUtils.isEmpty(name)) {
            if (mediaTrack.getSubtype() == 2) {
                name = this.zza.getString(C1331R.string.cast_tracks_chooser_dialog_closed_captions);
            } else if (languageLocale != null) {
                name = languageLocale.getDisplayLanguage();
                if (TextUtils.isEmpty(name)) {
                    name = this.zza.getString(C1331R.string.cast_tracks_chooser_dialog_default_track_name, Integer.valueOf(i + 1));
                }
            }
        }
        zzbjVar.zza.setText(name);
        return view;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.zzb = ((Integer) Preconditions.checkNotNull(((zzbj) Preconditions.checkNotNull((zzbj) view.getTag())).zzb.getTag())).intValue();
        notifyDataSetChanged();
    }

    public final MediaTrack zza() {
        int i = this.zzb;
        if (i < 0 || i >= getCount()) {
            return null;
        }
        return (MediaTrack) getItem(this.zzb);
    }
}
