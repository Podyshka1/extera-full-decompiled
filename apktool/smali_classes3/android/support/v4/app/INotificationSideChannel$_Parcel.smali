.class public abstract Landroid/support/v4/app/INotificationSideChannel$_Parcel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/INotificationSideChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_Parcel"
.end annotation


# direct methods
.method static synthetic access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .locals 0

    .line 188
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/INotificationSideChannel$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    return-void
.end method

.method private static writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 201
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 204
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
