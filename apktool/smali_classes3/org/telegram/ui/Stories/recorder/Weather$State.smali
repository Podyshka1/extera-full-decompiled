.class public Lorg/telegram/ui/Stories/recorder/Weather$State;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field public emoji:Ljava/lang/String;

.field public lat:D

.field public lng:D

.field public temperature:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 272
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;)Lorg/telegram/ui/Stories/recorder/Weather$State;
    .locals 4

    .line 297
    new-instance v0, Lorg/telegram/ui/Stories/recorder/Weather$State;

    invoke-direct {v0}, Lorg/telegram/ui/Stories/recorder/Weather$State;-><init>()V

    const/4 v1, 0x0

    .line 298
    invoke-virtual {p0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->readDouble(Z)D

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/ui/Stories/recorder/Weather$State;->lat:D

    .line 299
    invoke-virtual {p0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->readDouble(Z)D

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/ui/Stories/recorder/Weather$State;->lng:D

    .line 301
    invoke-virtual {p0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/Weather$State;->emoji:Ljava/lang/String;

    .line 302
    invoke-virtual {p0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->readFloat(Z)F

    move-result p0

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/Weather$State;->temperature:F

    return-object v0
.end method


# virtual methods
.method public getEmoji()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/Weather$State;->emoji:Ljava/lang/String;

    return-object v0
.end method

.method public getTemperature()Ljava/lang/String;
    .locals 1

    .line 285
    invoke-static {}, Lorg/telegram/ui/Stories/recorder/Weather;->isDefaultCelsius()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/Weather$State;->getTemperature(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTemperature(Z)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    .line 290
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/Weather$State;->temperature:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u00b0C"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 292
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/Weather$State;->temperature:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u00b0F"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    .line 308
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/Weather$State;->lat:D

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeDouble(D)V

    .line 309
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/Weather$State;->lng:D

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeDouble(D)V

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/Weather$State;->emoji:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 312
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/Weather$State;->temperature:F

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeFloat(F)V

    return-void
.end method
