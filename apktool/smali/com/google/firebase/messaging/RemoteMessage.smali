.class public final Lcom/google/firebase/messaging/RemoteMessage;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/messaging/RemoteMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field bundle:Landroid/os/Bundle;

.field private data:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/google/firebase/messaging/RemoteMessageCreator;

    invoke-direct {v0}, Lcom/google/firebase/messaging/RemoteMessageCreator;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/RemoteMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/firebase/messaging/RemoteMessage;->bundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/Map;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->data:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->bundle:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/google/firebase/messaging/Constants$MessagePayloadKeys;->extractDeveloperDefinedPayload(Landroid/os/Bundle;)Landroidx/collection/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->data:Ljava/util/Map;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->data:Ljava/util/Map;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->bundle:Landroid/os/Bundle;

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSentTime()J
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->bundle:Landroid/os/Bundle;

    const-string v1, "google.sent_time"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 188
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 189
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 190
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 192
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 194
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sent time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebaseMessaging"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 85
    invoke-static {p0, p1, p2}, Lcom/google/firebase/messaging/RemoteMessageCreator;->writeToParcel(Lcom/google/firebase/messaging/RemoteMessage;Landroid/os/Parcel;I)V

    return-void
.end method
