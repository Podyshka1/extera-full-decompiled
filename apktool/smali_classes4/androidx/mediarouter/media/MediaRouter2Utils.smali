.class abstract Landroidx/mediarouter/media/MediaRouter2Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/MediaRouter2Utils$Api34Impl;
    }
.end annotation


# direct methods
.method private static fwkDeviceTypeToAndroidXDeviceType(I)I
    .locals 6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_7

    const/4 v1, 0x3

    if-eq p0, v1, :cond_6

    const/4 v2, 0x4

    if-eq p0, v2, :cond_5

    const/16 v3, 0x16

    if-eq p0, v3, :cond_4

    const/16 v4, 0x17

    if-eq p0, v4, :cond_3

    const/16 v5, 0x1a

    if-eq p0, v5, :cond_2

    const/16 v3, 0x1d

    if-eq p0, v3, :cond_1

    const/16 v3, 0x7d0

    if-eq p0, v3, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0xb

    return p0

    :pswitch_1
    const/16 p0, 0xa

    return p0

    :pswitch_2
    const/16 p0, 0x9

    return p0

    :pswitch_3
    const/16 p0, 0x8

    return p0

    :pswitch_4
    const/4 p0, 0x7

    return p0

    :pswitch_5
    const/4 p0, 0x6

    return p0

    :pswitch_6
    const/4 p0, 0x5

    return p0

    :pswitch_7
    return v2

    :pswitch_8
    return v0

    :pswitch_9
    const/4 p0, 0x1

    return p0

    :pswitch_a
    const/16 p0, 0x13

    return p0

    :pswitch_b
    const/16 p0, 0x12

    return p0

    :pswitch_c
    const/16 p0, 0x11

    return p0

    :pswitch_d
    return v4

    :pswitch_e
    const/16 p0, 0x10

    return p0

    :pswitch_f
    return v1

    :cond_0
    const/16 p0, 0x3e8

    return p0

    :cond_1
    const/16 p0, 0x18

    return p0

    :cond_2
    return v3

    :cond_3
    const/16 p0, 0x15

    return p0

    :cond_4
    const/16 p0, 0x14

    return p0

    :cond_5
    const/16 p0, 0xe

    return p0

    :cond_6
    const/16 p0, 0xd

    return p0

    :cond_7
    const/16 p0, 0xc

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getRouteIds(Ljava/util/List;)Ljava/util/List;
    .locals 2

    if-nez p0, :cond_0

    .line 285
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 288
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/media/MediaRoute2Info;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 293
    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static toDiscoveryPreference(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)Landroid/media/RouteDiscoveryPreference;
    .locals 3

    if-eqz p0, :cond_2

    .line 315
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 318
    :cond_0
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v0

    .line 320
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 321
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->getSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteSelector;->getControlCategories()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 322
    invoke-static {v2}, Landroidx/mediarouter/media/MediaRouter2Utils;->toRouteFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 324
    :cond_1
    invoke-static {v1, v0}, Landroidx/mediarouter/media/MediaRouter2Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;Z)Landroid/media/RouteDiscoveryPreference$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/RouteDiscoveryPreference$Builder;->build()Landroid/media/RouteDiscoveryPreference;

    move-result-object p0

    return-object p0

    .line 316
    :cond_2
    :goto_1
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter2Utils$$ExternalSyntheticApiModelOutline1;->m()V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/mediarouter/media/MediaRouter2Utils$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;Z)Landroid/media/RouteDiscoveryPreference$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/RouteDiscoveryPreference$Builder;->build()Landroid/media/RouteDiscoveryPreference;

    move-result-object p0

    return-object p0
.end method

.method public static toMediaRouteDescriptor(Landroid/media/MediaRoute2Info;)Landroidx/mediarouter/media/MediaRouteDescriptor;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 190
    :cond_0
    new-instance v1, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 191
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getConnectionState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setConnectionState(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    move-result-object v1

    .line 193
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getVolumeHandling()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setVolumeHandling(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    move-result-object v1

    .line 194
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getVolumeMax()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setVolumeMax(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    move-result-object v1

    .line 195
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getVolume()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setVolume(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    move-result-object v1

    .line 196
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 197
    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setEnabled(Z)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    move-result-object v1

    const/4 v3, 0x0

    .line 198
    invoke-virtual {v1, v3}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setCanDisconnect(Z)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    move-result-object v1

    .line 201
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x22

    if-lt v4, v5, :cond_1

    .line 202
    invoke-static {p0}, Landroidx/mediarouter/media/MediaRouter2Utils$Api34Impl;->getDeduplicationIds(Landroid/media/MediaRoute2Info;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setDeduplicationIds(Ljava/util/Set;)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 204
    invoke-static {p0}, Landroidx/mediarouter/media/MediaRouter2Utils$Api34Impl;->getType(Landroid/media/MediaRoute2Info;)I

    move-result v4

    invoke-static {v4}, Landroidx/mediarouter/media/MediaRouter2Utils;->fwkDeviceTypeToAndroidXDeviceType(I)I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v3

    .line 207
    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getDescription()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 209
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setDescription(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 212
    :cond_2
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getIconUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 214
    invoke-virtual {v1, v5}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setIconUri(Landroid/net/Uri;)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 217
    :cond_3
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 218
    const-string v5, "androidx.mediarouter.media.KEY_EXTRAS"

    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 219
    const-string v6, "androidx.mediarouter.media.KEY_DEVICE_TYPE"

    invoke-virtual {p0, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 220
    const-string v7, "androidx.mediarouter.media.KEY_CONTROL_FILTERS"

    invoke-virtual {p0, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_2

    .line 225
    :cond_4
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    if-eqz v4, :cond_5

    goto :goto_1

    .line 229
    :cond_5
    invoke-virtual {p0, v6, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 226
    :goto_1
    invoke-virtual {v1, v4}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setDeviceType(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 230
    const-string v0, "androidx.mediarouter.media.KEY_PLAYBACK_TYPE"

    invoke-virtual {p0, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->setPlaybackType(I)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 232
    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 234
    invoke-virtual {v1, p0}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->addControlFilters(Ljava/util/Collection;)Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;

    .line 241
    :cond_6
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouteDescriptor$Builder;->build()Landroidx/mediarouter/media/MediaRouteDescriptor;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_2
    return-object v0
.end method

.method static toRouteFeature(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 328
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.media.intent.category.LIVE_VIDEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "android.media.intent.category.LIVE_AUDIO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "android.media.intent.category.REMOTE_PLAYBACK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object p0

    .line 332
    :pswitch_0
    const-string p0, "android.media.route.feature.LIVE_VIDEO"

    return-object p0

    .line 330
    :pswitch_1
    const-string p0, "android.media.route.feature.LIVE_AUDIO"

    return-object p0

    .line 334
    :pswitch_2
    const-string p0, "android.media.route.feature.REMOTE_PLAYBACK"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b1e3633 -> :sswitch_2
        0x3909bb2a -> :sswitch_1
        0x3a2c33cf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
