package org.telegram.p029ui.Adapters;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.GraySectionCell;
import org.telegram.p029ui.Cells.LocationCell;
import org.telegram.p029ui.Components.FlickerLoadingView;
import org.telegram.p029ui.Components.RecyclerListView;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes6.dex */
public abstract class LocationActivitySearchAdapter extends BaseLocationAdapter {
    private FlickerLoadingView globalGradientView;
    private Context mContext;
    private boolean myLocationDenied;
    private Theme.ResourcesProvider resourcesProvider;

    @Override // org.telegram.ui.Components.RecyclerListView.SelectionAdapter
    public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
        return true;
    }

    public void setMyLocationDenied(boolean z) {
        if (this.myLocationDenied == z) {
            return;
        }
        this.myLocationDenied = z;
    }

    public LocationActivitySearchAdapter(Context context, Theme.ResourcesProvider resourcesProvider, boolean z, boolean z2) {
        super(z, z2);
        this.myLocationDenied = false;
        this.mContext = context;
        this.resourcesProvider = resourcesProvider;
        FlickerLoadingView flickerLoadingView = new FlickerLoadingView(context);
        this.globalGradientView = flickerLoadingView;
        flickerLoadingView.setIsSingleCell(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        int size = !this.locations.isEmpty() ? this.locations.size() + 1 : 0;
        if (this.myLocationDenied) {
            return size;
        }
        if (isSearching()) {
            return size + 3;
        }
        if (!this.locations.isEmpty() && !this.places.isEmpty()) {
            size++;
        }
        return size + this.places.size();
    }

    public boolean isEmpty() {
        return this.places.size() == 0 && this.locations.size() == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View graySectionCell;
        if (i == 0) {
            graySectionCell = new LocationCell(this.mContext, false, this.resourcesProvider);
        } else {
            graySectionCell = new GraySectionCell(this.mContext, this.resourcesProvider);
        }
        return new RecyclerListView.Holder(graySectionCell);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0056  */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        TLRPC.TL_messageMediaVenue tL_messageMediaVenue;
        int i2;
        boolean z = true;
        if (viewHolder.getItemViewType() == 0) {
            int i3 = !this.locations.isEmpty() ? i - 1 : i;
            if (i3 >= 0 && i3 < this.locations.size()) {
                tL_messageMediaVenue = (TLRPC.TL_messageMediaVenue) this.locations.get(i3);
                i2 = 2;
            } else if (!isSearching()) {
                int size = i3 - this.locations.size();
                if (!this.searchingLocations && !this.locations.isEmpty()) {
                    size--;
                }
                i2 = size;
                if (i2 < 0 || i2 >= this.places.size()) {
                    tL_messageMediaVenue = null;
                    i2 = i;
                } else {
                    tL_messageMediaVenue = (TLRPC.TL_messageMediaVenue) this.places.get(i2);
                }
            }
            LocationCell locationCell = (LocationCell) viewHolder.itemView;
            if (i == getItemCount() - 1 || (!this.searchingLocations && !this.locations.isEmpty() && i == this.locations.size())) {
                z = false;
            }
            locationCell.setLocation(tL_messageMediaVenue, i2, z);
            return;
        }
        if (viewHolder.getItemViewType() == 1) {
            if (i == 0 && !this.locations.isEmpty()) {
                ((GraySectionCell) viewHolder.itemView).setText(LocaleController.getString(C2888R.string.LocationOnMap));
            } else {
                ((GraySectionCell) viewHolder.itemView).setText(LocaleController.getString(C2888R.string.NearbyVenue));
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return ((i == 0 || i == this.locations.size() + 1) && !this.locations.isEmpty()) ? 1 : 0;
    }

    public TLRPC.TL_messageMediaVenue getItem(int i) {
        if (!this.locations.isEmpty()) {
            i--;
        }
        if (i >= 0 && i < this.locations.size()) {
            return (TLRPC.TL_messageMediaVenue) this.locations.get(i);
        }
        if (isSearching()) {
            return null;
        }
        int size = i - this.locations.size();
        if (!this.locations.isEmpty()) {
            size--;
        }
        if (size < 0 || size >= this.places.size()) {
            return null;
        }
        return (TLRPC.TL_messageMediaVenue) this.places.get(size);
    }
}
