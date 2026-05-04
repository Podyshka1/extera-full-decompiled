.class public final synthetic Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public final synthetic f$0:[Landroid/location/LocationListener;

.field public final synthetic f$1:Landroid/location/LocationManager;

.field public final synthetic f$2:[Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public synthetic constructor <init>([Landroid/location/LocationListener;Landroid/location/LocationManager;[Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda10;->f$0:[Landroid/location/LocationListener;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda10;->f$1:Landroid/location/LocationManager;

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda10;->f$2:[Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda10;->f$0:[Landroid/location/LocationListener;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda10;->f$1:Landroid/location/LocationManager;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/Weather$$ExternalSyntheticLambda10;->f$2:[Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Stories/recorder/Weather;->$r8$lambda$5lhK-7sw0ZNDrDU65gbXvctrY3o([Landroid/location/LocationListener;Landroid/location/LocationManager;[Lorg/telegram/messenger/Utilities$Callback;Landroid/location/Location;)V

    return-void
.end method
