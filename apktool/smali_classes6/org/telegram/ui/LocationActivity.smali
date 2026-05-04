.class public Lorg/telegram/ui/LocationActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/LocationActivity$MapOverlayView;,
        Lorg/telegram/ui/LocationActivity$NestedFrameLayout;,
        Lorg/telegram/ui/LocationActivity$SearchButton;,
        Lorg/telegram/ui/LocationActivity$LiveLocation;,
        Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;,
        Lorg/telegram/ui/LocationActivity$VenueLocation;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private askWithRadius:I

.field private bitmapCache:[Landroid/graphics/Bitmap;

.field private canUndo:Z

.field private chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

.field private checkBackgroundPermission:Z

.field private checkGpsEnabled:Z

.field private checkPermission:Z

.field private currentMapStyleDark:Z

.field private delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

.field private dialogId:J

.field private emptyImageView:Landroid/widget/ImageView;

.field private emptySubtitleTextView:Landroid/widget/TextView;

.field private emptyTitleTextView:Landroid/widget/TextView;

.field private emptyView:Landroid/widget/LinearLayout;

.field private firstFocus:Z

.field private firstWas:Z

.field private forceUpdate:Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

.field public fromStories:Z

.field private hasScreenshot:Z

.field private hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private initialLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

.field private initialMaxZoom:Z

.field private isFirstLocation:Z

.field private isSharingAllowed:Z

.field private lastPressedMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

.field private lastPressedMarkerView:Landroid/widget/FrameLayout;

.field private lastPressedVenue:Lorg/telegram/ui/LocationActivity$VenueLocation;

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private locationButton:Landroid/widget/ImageView;

.field private locationDenied:Z

.field private locationType:I

.field private map:Lorg/telegram/messenger/IMapsProvider$IMap;

.field private mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

.field private mapViewClip:Landroid/widget/FrameLayout;

.field private mapsInitialized:Z

.field private markAsReadRunnable:Ljava/lang/Runnable;

.field private markerImageView:Landroid/view/View;

.field private markerTop:I

.field private markers:Ljava/util/ArrayList;

.field private markersMap:Landroidx/collection/LongSparseArray;

.field private messageObject:Lorg/telegram/messenger/MessageObject;

.field private moveToBounds:Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

.field private myLocation:Landroid/location/Location;

.field private onResumeCalled:Z

.field private otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private overScrollHeight:I

.field private overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

.field private parentFragment:Lorg/telegram/ui/ChatActivity;

.field private placeMarkers:Ljava/util/ArrayList;

.field private popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private previousRadius:D

.field private proximityAnimationInProgress:Z

.field private proximityButton:Landroid/widget/ImageView;

.field private proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

.field private proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

.field private scrolling:Z

.field private searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

.field private searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

.field private searchInProgress:Z

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private searchStoriesArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

.field private searchWas:Z

.field private searchedForCustomLocations:Z

.field private searching:Z

.field private selectedMarkerId:J

.field private shadow:Landroid/view/View;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private sharedMediaHeader:Lorg/telegram/ui/Cells/GraySectionCell;

.field private sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

.field private undoView:[Lorg/telegram/ui/Components/UndoView;

.field private updateRunnable:Ljava/lang/Runnable;

.field private userLocation:Landroid/location/Location;

.field private userLocationMoved:Z

.field private yOffset:F


# direct methods
.method public static synthetic $r8$lambda$1FkZ-LkLaV6pQFB2XRXCKhqEDFA(Lorg/telegram/ui/LocationActivity;Landroid/opengl/GLSurfaceView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$onCheckGlScreenshot$46(Landroid/opengl/GLSurfaceView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1_0ALlJk-sVWNuH30JTD4un7Rpk(Lorg/telegram/ui/LocationActivity;ILandroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LocationActivity;->lambda$createView$14(ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4T9GFvczz5-HTZJRCkWgc1ZS5cM(Lorg/telegram/ui/LocationActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$openShareLiveLocation$32(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$4rCqIktOw2ziA3iM0M03ya9Fajs(Lorg/telegram/ui/LocationActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$createView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4vD3SpJYcF6QTjjNz8bOxoQ9KJw(Lorg/telegram/ui/LocationActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$onMapInit$34(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5WDoAS8mQc6_BxNC-v8mAqfJGS0(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->lambda$getThemeDescriptions$47()V

    return-void
.end method

.method public static synthetic $r8$lambda$5a08PVDb7wrdrn9bxOTcFSan3uU(Lorg/telegram/ui/LocationActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$fixLayoutInternal$40(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$6SwEXW2VOgl8tD2PqokbYZjtdKI(Lorg/telegram/ui/LocationActivity;Landroid/location/Location;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$onMapInit$35(Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7RGZguf4wL_7yL4uY3mNMa1No-w(Lorg/telegram/ui/LocationActivity;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$createView$6(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AjFoqu-v1QvNcYk-S9Du9THQasw(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LocationActivity;->lambda$createView$11(Landroid/content/Context;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$C18y4DKmULnAheCoEiHewjRzCOQ(Lorg/telegram/ui/LocationActivity;ZI)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LocationActivity;->lambda$openProximityAlert$28(ZI)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ELpdDi-8u7s8b4acVOkKcSA0d8Q(Lorg/telegram/ui/LocationActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$createView$25(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F4WA06XbgujNCTvp07zISUbUicY(Lorg/telegram/ui/LocationActivity;ZLorg/telegram/tgnet/TLRPC$User;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LocationActivity;->lambda$openShareLiveLocation$33(ZLorg/telegram/tgnet/TLRPC$User;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$FjiCkRx0XlgRkEXMIFrkYU5pe4s(Lorg/telegram/ui/LocationActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$createView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G2Ezue6CmViDaMBTQrBVKoxQnWw(Lorg/telegram/ui/LocationActivity;Landroid/graphics/Bitmap;Landroid/opengl/GLSurfaceView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LocationActivity;->lambda$onCheckGlScreenshot$45(Landroid/graphics/Bitmap;Landroid/opengl/GLSurfaceView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G9S9bjBrB9_rEiE5gVKIoi6fVlA(Lorg/telegram/ui/LocationActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LocationActivity;->lambda$showPermissionAlert$39(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GZOLmKwj77NQLd3LuWYu-UGIIdI(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;ZII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LocationActivity;->lambda$createView$26(Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;ZII)V

    return-void
.end method

.method public static synthetic $r8$lambda$GjoE-iTsyee9pmAKaeUtYD8d2WA(Lorg/telegram/ui/LocationActivity;FLorg/telegram/messenger/IMapsProvider$IMarker;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LocationActivity;->lambda$onMapInit$36(FLorg/telegram/messenger/IMapsProvider$IMarker;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$I07Zeh_ozgpBbvmvtKgP33kCXQo(Lorg/telegram/ui/LocationActivity;Landroid/view/MotionEvent;Lorg/telegram/messenger/IMapsProvider$ICallableMethod;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LocationActivity;->lambda$createView$19(Landroid/view/MotionEvent;Lorg/telegram/messenger/IMapsProvider$ICallableMethod;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IJM2NA8KfqLOtGbqUT4_scUoZms(Lorg/telegram/ui/LocationActivity;Lorg/telegram/messenger/IMapsProvider$IMap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$createView$22(Lorg/telegram/messenger/IMapsProvider$IMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LEcMRFNYM4NOjuo24HUo0MhP-zQ(Lorg/telegram/ui/LocationActivity;Lorg/telegram/messenger/IMapsProvider$IMapView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$createView$24(Lorg/telegram/messenger/IMapsProvider$IMapView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LL_CdnczsuYCVoY5YrD21xDrMWE(Lorg/telegram/ui/LocationActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$createView$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MQyoUT05B192f0aW5C-eTEXSHoA(Lorg/telegram/ui/LocationActivity;Landroid/view/ViewGroup;Landroid/opengl/GLSurfaceView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LocationActivity;->lambda$onCheckGlScreenshot$44(Landroid/view/ViewGroup;Landroid/opengl/GLSurfaceView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N101I8dSNefE4WGyxKrqLU4P7lE(Lorg/telegram/ui/LocationActivity;Lorg/telegram/messenger/IMapsProvider$IMapView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$createView$23(Lorg/telegram/messenger/IMapsProvider$IMapView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PA6cOXwrl0BH92wWIQtUIGut8VI(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLRPC$User;ILorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LocationActivity;->lambda$openProximityAlert$29(Lorg/telegram/tgnet/TLRPC$User;ILorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PBwnHs7-onPTdm3kGQchwcYI1Fk(Lorg/telegram/ui/LocationActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$createView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$POAb4y9DjNT12IgW2F6_gW5wJf8(Lorg/telegram/ui/LocationActivity;Lorg/telegram/ui/LocationActivity$LiveLocation;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LocationActivity;->lambda$createView$10(Lorg/telegram/ui/LocationActivity$LiveLocation;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rd-9DCVnjI2rBaf001zbAg94GwA(Lorg/telegram/ui/LocationActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LocationActivity;->lambda$createView$12([Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SGMJPFmyBpDI5cjQLLt6-OXxlF4(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->lambda$createView$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$SlX2k2ix-Xk7zZ6-bk4NUjEHDqY(Lorg/telegram/ui/LocationActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LocationActivity;->lambda$checkGpsEnabled$38(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YGHBFcjHaSLo3TP0AogC99lqYQg(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->lambda$createView$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$_S_RcSiXj1NDrZ1GWQLVzUSvQM0(Lorg/telegram/ui/LocationActivity;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LocationActivity;->lambda$getRecentLocations$43(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a49wnM8XXobF7VA-iVxvAaej1_g(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->lambda$createView$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$efNCRdPg4ILXGXrgVJ5eRa7SaxA(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->lambda$openProximityAlert$31()V

    return-void
.end method

.method public static synthetic $r8$lambda$esmsdn2DgJLS4yplSLDcqbsyDLM(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;ZII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LocationActivity;->lambda$createView$15(Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;ZII)V

    return-void
.end method

.method public static synthetic $r8$lambda$giW3TWiZXFn1vkPEw9fNTaEoolc(Lorg/telegram/ui/LocationActivity;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LocationActivity;->lambda$createView$17(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ixplKdQey7KqVj7cRqhYSwNmI4I(Lorg/telegram/ui/LocationActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->updatePlacesMarkers(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k97dI34rTNgyALLzdc_6bXaQ99c(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 910
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$kNy84dl8LwEJjLoQ7EqLfPQduZw(Lorg/telegram/ui/LocationActivity;Landroid/view/MotionEvent;Lorg/telegram/messenger/IMapsProvider$ICallableMethod;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LocationActivity;->lambda$createView$18(Landroid/view/MotionEvent;Lorg/telegram/messenger/IMapsProvider$ICallableMethod;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ls-5HkMoH8kVUp-ucnLmeDZAYWI(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->lambda$onMapInit$37()V

    return-void
.end method

.method public static synthetic $r8$lambda$mrC-3HCE4U7UWuCDHd0YrTEsjww(Lorg/telegram/ui/LocationActivity;Lorg/telegram/ui/ActionBar/ActionBarMenu;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LocationActivity;->lambda$createView$27(Lorg/telegram/ui/ActionBar/ActionBarMenu;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$n8lIY9bdiZSE12H97J1WF5L79y0(Lorg/telegram/ui/LocationActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$createView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nNpmk2xsKvKJsKbXyeGjsE7UuUU(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLRPC$User;ZI)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LocationActivity;->lambda$openProximityAlert$30(Lorg/telegram/tgnet/TLRPC$User;ZI)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qtovd9X1xPlib1SwlFW_FogeZ_4(Lorg/telegram/ui/LocationActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LocationActivity;->lambda$createView$13([Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rS-kPLhfEFeF6rF8pHgDZvhX5d8(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->lambda$createView$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$riFNACJ3ZpqbkU-6YrsCxCEH1z4(Lorg/telegram/ui/LocationActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->lambda$createView$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$su2YU0bj_GLH5OejXanPIuLWSs8(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLObject;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LocationActivity;->lambda$getRecentLocations$42(Lorg/telegram/tgnet/TLObject;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$v8LYOxBDXSjcpqMVoPvADLN7Ueo(Lorg/telegram/ui/LocationActivity;Ljava/lang/Object;ZII)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LocationActivity;->lambda$createView$16(Ljava/lang/Object;ZII)V

    return-void
.end method

.method public static synthetic $r8$lambda$wz_6gE4dvTxRf9Z_OMYurSYvM_I(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->lambda$getRecentLocations$41()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetadapter(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Adapters/LocationActivityAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdelegate(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemptySubtitleTextView(Lorg/telegram/ui/LocationActivity;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->emptySubtitleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetforceUpdate(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->forceUpdate:Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastPressedMarker(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/messenger/IMapsProvider$IMarker;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->lastPressedMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastPressedMarkerView(Lorg/telegram/ui/LocationActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->lastPressedMarkerView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastPressedVenue(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/LocationActivity$VenueLocation;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->lastPressedVenue:Lorg/telegram/ui/LocationActivity$VenueLocation;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlocationType(Lorg/telegram/ui/LocationActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmap(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/messenger/IMapsProvider$IMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmapViewClip(Lorg/telegram/ui/LocationActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmessageObject(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/messenger/MessageObject;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetotherItem(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoverlayView(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/LocationActivity$MapOverlayView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparentFragment(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ChatActivity;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->parentFragment:Lorg/telegram/ui/ChatActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrolling(Lorg/telegram/ui/LocationActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/LocationActivity;->scrolling:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchAdapter(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchItem(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchListView(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchStoriesArea(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/tgnet/tl/TL_stories$MediaArea;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->searchStoriesArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchWas(Lorg/telegram/ui/LocationActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/LocationActivity;->searchWas:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsearching(Lorg/telegram/ui/LocationActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/LocationActivity;->searching:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetshadowDrawable(Lorg/telegram/ui/LocationActivity;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsharedMediaHeader(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Cells/GraySectionCell;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->sharedMediaHeader:Lorg/telegram/ui/Cells/GraySectionCell;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsharedMediaLayout(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuserLocation(Lorg/telegram/ui/LocationActivity;)Landroid/location/Location;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetyOffset(Lorg/telegram/ui/LocationActivity;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/LocationActivity;->yOffset:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputforceUpdate(Lorg/telegram/ui/LocationActivity;Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->forceUpdate:Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastPressedMarker(Lorg/telegram/ui/LocationActivity;Lorg/telegram/messenger/IMapsProvider$IMarker;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->lastPressedMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastPressedMarkerView(Lorg/telegram/ui/LocationActivity;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->lastPressedMarkerView:Landroid/widget/FrameLayout;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastPressedVenue(Lorg/telegram/ui/LocationActivity;Lorg/telegram/ui/LocationActivity$VenueLocation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->lastPressedVenue:Lorg/telegram/ui/LocationActivity$VenueLocation;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpopupWindow(Lorg/telegram/ui/LocationActivity;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputproximityAnimationInProgress(Lorg/telegram/ui/LocationActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->proximityAnimationInProgress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscrolling(Lorg/telegram/ui/LocationActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->scrolling:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearchInProgress(Lorg/telegram/ui/LocationActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->searchInProgress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearchWas(Lorg/telegram/ui/LocationActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->searchWas:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearching(Lorg/telegram/ui/LocationActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->searching:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselectedMarkerId(Lorg/telegram/ui/LocationActivity;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/telegram/ui/LocationActivity;->selectedMarkerId:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputyOffset(Lorg/telegram/ui/LocationActivity;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/LocationActivity;->yOffset:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mfixLayoutInternal(Lorg/telegram/ui/LocationActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->fixLayoutInternal(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmaybeShowProximityHint(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->maybeShowProximityHint()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenDirections(Lorg/telegram/ui/LocationActivity;Lorg/telegram/ui/LocationActivity$LiveLocation;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->openDirections(Lorg/telegram/ui/LocationActivity$LiveLocation;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenShareLiveLocation(Lorg/telegram/ui/LocationActivity;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LocationActivity;->openShareLiveLocation(ZI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSearchPlacesButton(Lorg/telegram/ui/LocationActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->showSearchPlacesButton(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateClipView(Lorg/telegram/ui/LocationActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->updateClipView(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEmptyView(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->updateEmptyView()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 438
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, 0x2

    .line 149
    new-array v0, v0, [Lorg/telegram/ui/Components/UndoView;

    iput-object v0, p0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->checkGpsEnabled:Z

    const/4 v1, 0x0

    .line 182
    iput-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->locationDenied:Z

    .line 184
    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->isFirstLocation:Z

    .line 187
    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->firstFocus:Z

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/LocationActivity;->markers:Ljava/util/ArrayList;

    .line 192
    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/LocationActivity;->markersMap:Landroidx/collection/LongSparseArray;

    const-wide/16 v1, -0x1

    .line 193
    iput-wide v1, p0, Lorg/telegram/ui/LocationActivity;->selectedMarkerId:J

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/LocationActivity;->placeMarkers:Ljava/util/ArrayList;

    .line 203
    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->checkPermission:Z

    .line 204
    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->checkBackgroundPermission:Z

    .line 229
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x42840000    # 66.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    .line 525
    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->isSharingAllowed:Z

    const/4 v0, 0x7

    .line 1763
    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/telegram/ui/LocationActivity;->bitmapCache:[Landroid/graphics/Bitmap;

    .line 439
    iput p1, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    .line 440
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->fixGoogleMapsBug()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/LocationActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 132
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method private addUserMarker(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/ui/LocationActivity$LiveLocation;
    .locals 8

    .line 1814
    new-instance v0, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    .line 1815
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->markersMap:Landroidx/collection/LongSparseArray;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/LocationActivity$LiveLocation;

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 1816
    new-instance v1, Lorg/telegram/ui/LocationActivity$LiveLocation;

    invoke-direct {v1}, Lorg/telegram/ui/LocationActivity$LiveLocation;-><init>()V

    .line 1817
    iput-object p1, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->object:Lorg/telegram/tgnet/TLRPC$Message;

    .line 1818
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v3, :cond_0

    .line 1819
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->object:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 1820
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->object:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    iput-wide v3, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->id:J

    goto :goto_1

    .line 1822
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v3

    .line 1823
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1824
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iput-object v5, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_0

    .line 1826
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    neg-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    iput-object v5, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1828
    :goto_0
    iput-wide v3, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->id:J

    .line 1832
    :goto_1
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/messenger/IMapsProvider;->onCreateMarkerOptions()Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->position(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v3

    .line 1833
    invoke-direct {p0, v1}, Lorg/telegram/ui/LocationActivity;->createUserBitmap(Lorg/telegram/ui/LocationActivity$LiveLocation;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1835
    invoke-interface {v3, v4}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->icon(Landroid/graphics/Bitmap;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    const v4, 0x3f683127    # 0.907f

    const/high16 v5, 0x3f000000    # 0.5f

    .line 1836
    invoke-interface {v3, v5, v4}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->anchor(FF)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    .line 1837
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v4, v3}, Lorg/telegram/messenger/IMapsProvider$IMap;->addMarker(Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;)Lorg/telegram/messenger/IMapsProvider$IMarker;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    .line 1839
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1840
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/messenger/IMapsProvider;->onCreateMarkerOptions()Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->position(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->flat(Z)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v0

    .line 1841
    invoke-interface {v0, v5, v5}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->anchor(FF)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    .line 1842
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v3, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->addMarker(Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;)Lorg/telegram/messenger/IMapsProvider$IMarker;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->directionMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    .line 1844
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->heading:I

    if-eqz p1, :cond_2

    .line 1845
    invoke-interface {v0, p1}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setRotation(I)V

    .line 1846
    iget-object p1, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->directionMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    sget v0, Lorg/telegram/messenger/R$drawable;->map_pin_cone2:I

    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setIcon(I)V

    .line 1847
    iput-boolean v2, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->hasRotation:Z

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    .line 1849
    invoke-interface {v0, p1}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setRotation(I)V

    .line 1850
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->directionMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    sget v3, Lorg/telegram/messenger/R$drawable;->map_pin_circle:I

    invoke-interface {v0, v3}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setIcon(I)V

    .line 1851
    iput-boolean p1, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->hasRotation:Z

    .line 1855
    :cond_3
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->markers:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1856
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->markersMap:Landroidx/collection/LongSparseArray;

    iget-wide v3, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->id:J

    invoke-virtual {p1, v3, v4, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1857
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object p1

    iget-wide v3, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-virtual {p1, v3, v4}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object p1

    .line 1858
    iget-wide v3, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->id:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    iget-object v0, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->object:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget p1, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->mid:I

    if-ne v0, p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    if-eqz p1, :cond_5

    .line 1859
    new-instance v0, Lorg/telegram/messenger/IMapsProvider$LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    .line 1860
    iget-object p1, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setPosition(Lorg/telegram/messenger/IMapsProvider$LatLng;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1864
    :goto_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 1867
    :cond_4
    iput-object p1, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->object:Lorg/telegram/tgnet/TLRPC$Message;

    .line 1868
    iget-object p1, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setPosition(Lorg/telegram/messenger/IMapsProvider$LatLng;)V

    .line 1869
    iget-wide v3, p0, Lorg/telegram/ui/LocationActivity;->selectedMarkerId:J

    iget-wide v5, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->id:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_5

    .line 1870
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {v3}, Lorg/telegram/messenger/IMapsProvider$IMarker;->getPosition()Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLng(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    .line 1873
    :cond_5
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

    if-eqz p1, :cond_6

    .line 1874
    invoke-virtual {p1, v2, v2}, Lorg/telegram/ui/Components/ProximitySheet;->updateText(ZZ)V

    :cond_6
    return-object v1
.end method

.method private addUserMarker(Lorg/telegram/tgnet/TLRPC$TL_channelLocation;)Lorg/telegram/ui/LocationActivity$LiveLocation;
    .locals 5

    .line 1880
    new-instance v0, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    .line 1881
    new-instance p1, Lorg/telegram/ui/LocationActivity$LiveLocation;

    invoke-direct {p1}, Lorg/telegram/ui/LocationActivity$LiveLocation;-><init>()V

    .line 1882
    iget-wide v1, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1883
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->user:Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_0

    .line 1885
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1887
    :goto_0
    iget-wide v1, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    iput-wide v1, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->id:J

    .line 1890
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/messenger/IMapsProvider;->onCreateMarkerOptions()Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->position(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v1

    .line 1891
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->createUserBitmap(Lorg/telegram/ui/LocationActivity$LiveLocation;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1893
    invoke-interface {v1, v2}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->icon(Landroid/graphics/Bitmap;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    const v2, 0x3f683127    # 0.907f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 1894
    invoke-interface {v1, v3, v2}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->anchor(FF)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    .line 1895
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v2, v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->addMarker(Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;)Lorg/telegram/messenger/IMapsProvider$IMarker;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    .line 1897
    iget-object v1, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1898
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/messenger/IMapsProvider;->onCreateMarkerOptions()Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->position(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->flat(Z)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v0

    .line 1899
    sget v1, Lorg/telegram/messenger/R$drawable;->map_pin_circle:I

    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->icon(I)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    .line 1900
    invoke-interface {v0, v3, v3}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->anchor(FF)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    .line 1901
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->addMarker(Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;)Lorg/telegram/messenger/IMapsProvider$IMarker;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->directionMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    .line 1904
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->markers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1905
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->markersMap:Landroidx/collection/LongSparseArray;

    iget-wide v1, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->id:J

    invoke-virtual {v0, v1, v2, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p1

    .line 1908
    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private checkGpsEnabled()Z
    .locals 6

    .line 2037
    invoke-virtual {p0}, Lorg/telegram/ui/LocationActivity;->disablePermissionCheck()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2040
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.location.gps"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 2044
    :cond_1
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 2045
    const-string v3, "gps"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2046
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2047
    sget v3, Lorg/telegram/messenger/R$raw;->permission_request_location:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    const/16 v5, 0x48

    invoke-virtual {v0, v3, v5, v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2048
    sget v3, Lorg/telegram/messenger/R$string;->GpsDisabledAlertText:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2049
    sget v3, Lorg/telegram/messenger/R$string;->ConnectingToProxyEnable:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda23;

    invoke-direct {v4, p0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2059
    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2060
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    .line 2064
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    return v2
.end method

.method private createCircle(I)V
    .locals 8

    .line 2070
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-nez v0, :cond_0

    return-void

    .line 2073
    :cond_0
    new-instance v0, Lorg/telegram/messenger/IMapsProvider$PatternItem$Gap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/telegram/messenger/IMapsProvider$PatternItem$Gap;-><init>(I)V

    new-instance v2, Lorg/telegram/messenger/IMapsProvider$PatternItem$Dash;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/IMapsProvider$PatternItem$Dash;-><init>(I)V

    const/4 v1, 0x2

    new-array v3, v1, [Lorg/telegram/messenger/IMapsProvider$PatternItem;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2075
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/messenger/IMapsProvider;->onCreateCircleOptions()Lorg/telegram/messenger/IMapsProvider$ICircleOptions;

    move-result-object v2

    .line 2076
    new-instance v3, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    iget-object v6, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    invoke-interface {v2, v3}, Lorg/telegram/messenger/IMapsProvider$ICircleOptions;->center(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ICircleOptions;

    int-to-double v3, p1

    .line 2077
    invoke-interface {v2, v3, v4}, Lorg/telegram/messenger/IMapsProvider$ICircleOptions;->radius(D)Lorg/telegram/messenger/IMapsProvider$ICircleOptions;

    .line 2078
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->isActiveThemeDark()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, -0x69995c29

    .line 2079
    invoke-interface {v2, p1}, Lorg/telegram/messenger/IMapsProvider$ICircleOptions;->strokeColor(I)Lorg/telegram/messenger/IMapsProvider$ICircleOptions;

    const p1, 0x1c66a3d7

    .line 2080
    invoke-interface {v2, p1}, Lorg/telegram/messenger/IMapsProvider$ICircleOptions;->fillColor(I)Lorg/telegram/messenger/IMapsProvider$ICircleOptions;

    goto :goto_0

    :cond_1
    const p1, -0x69bd790b

    .line 2082
    invoke-interface {v2, p1}, Lorg/telegram/messenger/IMapsProvider$ICircleOptions;->strokeColor(I)Lorg/telegram/messenger/IMapsProvider$ICircleOptions;

    const p1, 0x1c4286f5

    .line 2083
    invoke-interface {v2, p1}, Lorg/telegram/messenger/IMapsProvider$ICircleOptions;->fillColor(I)Lorg/telegram/messenger/IMapsProvider$ICircleOptions;

    .line 2085
    :goto_0
    invoke-interface {v2, v0}, Lorg/telegram/messenger/IMapsProvider$ICircleOptions;->strokePattern(Ljava/util/List;)Lorg/telegram/messenger/IMapsProvider$ICircleOptions;

    .line 2086
    invoke-interface {v2, v1}, Lorg/telegram/messenger/IMapsProvider$ICircleOptions;->strokeWidth(I)Lorg/telegram/messenger/IMapsProvider$ICircleOptions;

    .line 2087
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {p1, v2}, Lorg/telegram/messenger/IMapsProvider$IMap;->addCircle(Lorg/telegram/messenger/IMapsProvider$ICircleOptions;)Lorg/telegram/messenger/IMapsProvider$ICircle;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    return-void
.end method

.method private createPlaceBitmap(I)Landroid/graphics/Bitmap;
    .locals 8

    .line 1765
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->bitmapCache:[Landroid/graphics/Bitmap;

    rem-int/lit8 v1, p1, 0x7

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 1769
    :try_start_0
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v2, -0x1

    .line 1770
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 1771
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1772
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v4, 0x40c00000    # 6.0f

    .line 1773
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v5, v6, v7, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1774
    invoke-static {p1}, Lorg/telegram/ui/Cells/LocationCell;->getColorForIndex(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1775
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v5, v4, v6, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1776
    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1777
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->bitmapCache:[Landroid/graphics/Bitmap;

    rem-int/lit8 p1, p1, 0x7

    aput-object v2, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p1

    .line 1779
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private createUserBitmap(Lorg/telegram/ui/LocationActivity$LiveLocation;)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v0, 0x0

    .line 1537
    :try_start_0
    iget-object v1, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_0

    .line 1538
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 1539
    :cond_0
    iget-object v1, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v1, :cond_1

    .line 1540
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    const/high16 v2, 0x42780000    # 62.0f

    .line 1542
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x42aa0000    # 85.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    .line 1543
    :try_start_1
    invoke-virtual {v3, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1544
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1545
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->map_pin_photo:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1546
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v7, v5, v5, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1547
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1549
    new-instance v2, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 1550
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 1551
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 1553
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 1554
    new-instance v7, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v7}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 1555
    iget-object v8, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v8, :cond_2

    .line 1556
    iget v9, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {v7, v9, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v0, v3

    goto/16 :goto_3

    .line 1557
    :cond_2
    iget-object v8, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v8, :cond_3

    .line 1558
    iget v9, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {v7, v9, v8}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    :cond_3
    :goto_1
    const/high16 v8, 0x40c00000    # 6.0f

    .line 1560
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v9, 0x42480000    # 50.0f

    .line 1561
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v7, v5, v5, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/high16 v5, 0x41c80000    # 25.0f

    .line 1562
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-virtual {v7, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->setRoundRadius(I)V

    .line 1563
    invoke-virtual {v7, v6}, Lorg/telegram/ui/Components/AvatarDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1564
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    if-eqz v1, :cond_5

    .line 1567
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v7, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    iget-object v7, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    :goto_2
    invoke-static {v1, v7}, Lorg/telegram/messenger/ImageReceiver;->getAvatarLocalFile(ILorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object p1

    .line 1568
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1570
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v7, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 1571
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 1572
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v9, p1

    .line 1573
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, p1, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1574
    invoke-virtual {v7, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1575
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1576
    invoke-virtual {v1, v7}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1577
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v7, 0x42600000    # 56.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, p1, v1, v8, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1578
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v6, v4, p1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1581
    :cond_5
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1583
    :try_start_2
    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 1588
    :goto_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v3, v0

    :catch_0
    :goto_4
    return-object v3
.end method

.method private fetchRecentLocations(Ljava/util/ArrayList;)V
    .locals 13

    .line 2437
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->firstFocus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2438
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider;->onCreateLatLngBoundsBuilder()Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2440
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    .line 2441
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v4, v5, :cond_4

    .line 2442
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Message;

    .line 2443
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v9, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->period:I

    add-int/2addr v7, v9

    if-gt v7, v2, :cond_1

    const v7, 0x7fffffff

    if-ne v9, v7, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    .line 2445
    new-instance v7, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v9, v8, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v11, v8, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-direct {v7, v9, v10, v11, v12}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    .line 2446
    invoke-interface {v0, v7}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->include(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;

    .line 2448
    :cond_2
    invoke-direct {p0, v5}, Lorg/telegram/ui/LocationActivity;->addUserMarker(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/ui/LocationActivity$LiveLocation;

    .line 2449
    iget-object v7, p0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_3

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->getFromChatId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-eqz v5, :cond_3

    .line 2450
    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2451
    iput-boolean v6, p0, Lorg/telegram/ui/LocationActivity;->proximityAnimationInProgress:Z

    .line 2452
    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0xb4

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/LocationActivity$12;

    invoke-direct {v6, p0}, Lorg/telegram/ui/LocationActivity$12;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 2458
    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_6

    .line 2463
    iget-boolean v2, p0, Lorg/telegram/ui/LocationActivity;->firstFocus:Z

    if-eqz v2, :cond_5

    .line 2464
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v4, 0x42c60000    # 99.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 2466
    :cond_5
    iput-boolean v3, p0, Lorg/telegram/ui/LocationActivity;->firstFocus:Z

    .line 2467
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->markers:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setLiveLocations(Ljava/util/ArrayList;)V

    .line 2468
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2470
    :try_start_0
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->build()Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;

    move-result-object v2

    .line 2471
    invoke-interface {v2}, Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;->getCenter()Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object v2

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 2472
    invoke-static {v2, v3, v4, v3, v4}, Lorg/telegram/ui/LocationActivity;->move(Lorg/telegram/messenger/IMapsProvider$LatLng;DD)Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object v3

    const-wide/high16 v4, -0x3fa7000000000000L    # -100.0

    .line 2473
    invoke-static {v2, v4, v5, v4, v5}, Lorg/telegram/ui/LocationActivity;->move(Lorg/telegram/messenger/IMapsProvider$LatLng;DD)Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object v2

    .line 2474
    invoke-interface {v0, v2}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->include(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;

    .line 2475
    invoke-interface {v0, v3}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->include(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;

    .line 2476
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->build()Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;

    move-result-object v0

    .line 2477
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-le p1, v6, :cond_6

    .line 2479
    :try_start_1
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object p1

    const/high16 v2, 0x42e20000    # 113.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-interface {p1, v0, v2}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngBounds(Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;I)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->moveToBounds:Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    .line 2480
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->moveCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    .line 2481
    iput-object v1, p0, Lorg/telegram/ui/LocationActivity;->moveToBounds:Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2483
    :try_start_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_6
    :goto_2
    return-void
.end method

.method private fixLayoutInternal(Z)V
    .locals 9

    .line 2265
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_d

    .line 2266
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 2267
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_4

    .line 2271
    :cond_1
    iget v3, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/4 v4, 0x6

    const/4 v5, 0x2

    const/high16 v6, 0x42840000    # 66.0f

    if-ne v3, v4, :cond_2

    .line 2272
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    goto :goto_1

    :cond_2
    if-ne v3, v5, :cond_3

    const/high16 v3, 0x42920000    # 73.0f

    .line 2274
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    goto :goto_1

    .line 2276
    :cond_3
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    .line 2278
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    if-eqz v2, :cond_4

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->getStoriesCount(I)I

    move-result v2

    if-lez v2, :cond_4

    .line 2279
    iget v2, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    .line 2282
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 2283
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2284
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2285
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 2286
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2287
    iget v3, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2288
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2289
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_5

    .line 2290
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 2291
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2292
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2295
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget v2, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setOverScrollHeight(I)V

    .line 2296
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v2, 0x41200000    # 10.0f

    if-eqz v0, :cond_7

    .line 2298
    iget v3, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2299
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz v3, :cond_6

    .line 2300
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-interface {v3, v4}, Lorg/telegram/messenger/IMapsProvider$IMap;->getFragmentPadding(I)Lorg/telegram/messenger/IMapsProvider$IMap$Padding;

    move-result-object v3

    .line 2301
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    iget v6, v3, Lorg/telegram/messenger/IMapsProvider$IMap$Padding;->left:I

    iget v7, v3, Lorg/telegram/messenger/IMapsProvider$IMap$Padding;->top:I

    iget v8, v3, Lorg/telegram/messenger/IMapsProvider$IMap$Padding;->right:I

    iget v3, v3, Lorg/telegram/messenger/IMapsProvider$IMap$Padding;->bottom:I

    invoke-interface {v4, v6, v7, v8, v3}, Lorg/telegram/messenger/IMapsProvider$IMap;->setPadding(IIII)V

    .line 2303
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v3}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2305
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    if-eqz v0, :cond_8

    .line 2306
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_8

    .line 2308
    iget v3, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v3, v2

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2309
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2312
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    if-eqz p1, :cond_c

    .line 2316
    iget p1, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    const/16 p1, 0x49

    goto :goto_3

    :cond_9
    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    if-ne p1, v5, :cond_a

    goto :goto_2

    :cond_a
    move p1, v1

    goto :goto_3

    :cond_b
    :goto_2
    const/16 p1, 0x42

    .line 2323
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    int-to-float v2, p1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2324
    invoke-direct {p0, v1}, Lorg/telegram/ui/LocationActivity;->updateClipView(Z)V

    .line 2325
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LocationActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 2330
    :cond_c
    invoke-direct {p0, v1}, Lorg/telegram/ui/LocationActivity;->updateClipView(Z)V

    :cond_d
    :goto_4
    return-void
.end method

.method private getLastLocation()Landroid/location/Location;
    .locals 4

    .line 2337
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const/4 v1, 0x1

    .line 2338
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v2

    .line 2340
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v1, 0x0

    :goto_0
    if-ltz v3, :cond_1

    .line 2341
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getMapThemeResId()I
    .locals 2

    .line 1438
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    .line 1439
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f389375    # 0.721f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1445
    sget v0, Lorg/telegram/messenger/R$raw;->mapstyle_night:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getMessageId(Lorg/telegram/tgnet/TLRPC$Message;)J
    .locals 2

    .line 1594
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_0

    .line 1595
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v0

    return-wide v0

    .line 1597
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getRecentLocations()Z
    .locals 7

    .line 2553
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocationController;->locationsCache:Landroidx/collection/LongSparseArray;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2554
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2555
    invoke-direct {p0, v0}, Lorg/telegram/ui/LocationActivity;->fetchRecentLocations(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2559
    :goto_0
    iget-wide v1, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2560
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v3, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 2561
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v1, :cond_1

    return v2

    .line 2565
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentLocations;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentLocations;-><init>()V

    .line 2566
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    .line 2567
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentLocations;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/16 v5, 0x64

    .line 2568
    iput v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentLocations;->limit:I

    .line 2569
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda46;

    invoke-direct {v6, p0, v3, v4}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/LocationActivity;J)V

    invoke-virtual {v5, v1, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method private getUndoView()Lorg/telegram/ui/Components/UndoView;
    .locals 5

    .line 514
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v2, v0, v1

    const/4 v3, 0x1

    .line 516
    aget-object v4, v0, v3

    aput-object v4, v0, v1

    .line 517
    aput-object v2, v0, v3

    const/4 v0, 0x2

    .line 518
    invoke-virtual {v2, v3, v0}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    .line 519
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 520
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 522
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v0, v0, v1

    return-object v0
.end method

.method private isActiveThemeDark()Z
    .locals 3

    .line 1427
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1428
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    .line 1429
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1433
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    .line 1434
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v2, 0x3f389375    # 0.721f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$checkGpsEnabled$38(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    .line 2050
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2054
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;)V
    .locals 9

    .line 729
    const-string p1, ","

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 730
    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 731
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "geo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, "?q="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v5, v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 733
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x0

    .line 740
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->showSearchPlacesButton(Z)V

    .line 741
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2, v2}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchPlacesWithQuery(Ljava/lang/String;Landroid/location/Location;ZZ)V

    .line 742
    iput-boolean v2, p0, Lorg/telegram/ui/LocationActivity;->searchedForCustomLocations:Z

    .line 743
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->showResults()V

    return-void
.end method

.method private synthetic lambda$createView$10(Lorg/telegram/ui/LocationActivity$LiveLocation;Landroid/view/View;)V
    .locals 0

    .line 1075
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->openDirections(Lorg/telegram/ui/LocationActivity$LiveLocation;)V

    .line 1076
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    .line 1077
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$11(Landroid/content/Context;Landroid/view/View;I)Z
    .locals 6

    .line 1064
    iget v0, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1065
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    .line 1066
    instance-of v0, p3, Lorg/telegram/ui/LocationActivity$LiveLocation;

    if-eqz v0, :cond_0

    .line 1068
    check-cast p3, Lorg/telegram/ui/LocationActivity$LiveLocation;

    .line 1070
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;)V

    .line 1071
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p1, v3, v5, v5, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/high16 v3, 0x43480000    # 200.0f

    .line 1072
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1073
    sget v3, Lorg/telegram/messenger/R$string;->GetDirections:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->filled_directions:I

    invoke-virtual {p1, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1074
    new-instance v3, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda32;

    invoke-direct {v3, p0, p3}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/LocationActivity;Lorg/telegram/ui/LocationActivity$LiveLocation;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1080
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 1082
    new-instance p1, Lorg/telegram/ui/LocationActivity$8;

    const/4 p3, -0x2

    invoke-direct {p1, p0, v0, p3, p3}, Lorg/telegram/ui/LocationActivity$8;-><init>(Lorg/telegram/ui/LocationActivity;Landroid/view/View;II)V

    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 1089
    invoke-virtual {p1, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1090
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1091
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1092
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 1094
    new-array p1, v2, [I

    .line 1095
    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1096
    iget-object p3, p0, Lorg/telegram/ui/LocationActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    aget p1, p1, v5

    const/high16 v0, 0x42500000    # 52.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p1, v0

    const/16 v0, 0x30

    invoke-virtual {p3, p2, v0, v1, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1097
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dimBehind()V

    return v5

    :cond_0
    return v1
.end method

.method private synthetic lambda$createView$12([Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;)V
    .locals 9

    const/4 v0, 0x0

    .line 1125
    :try_start_0
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v1, 0x0

    .line 1129
    aput-object v1, p1, v0

    .line 1130
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v3, p2

    invoke-interface/range {v2 .. v8}, Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V

    .line 1131
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createView$13([Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1123
    new-instance p3, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda35;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/LocationActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$14(ILandroid/content/DialogInterface;)V
    .locals 1

    .line 1133
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    return-void
.end method

.method private synthetic lambda$createView$15(Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;ZII)V
    .locals 7

    .line 1156
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    iget v2, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    const-wide/16 v5, 0x0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v6}, Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V

    .line 1157
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createView$16(Ljava/lang/Object;ZII)V
    .locals 7

    .line 1184
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    move-object v1, p1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    iget v2, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    const-wide/16 v5, 0x0

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v6}, Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V

    .line 1185
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createView$17(Landroid/view/View;I)V
    .locals 11

    const-wide/16 v0, -0x1

    .line 1105
    iput-wide v0, p0, Lorg/telegram/ui/LocationActivity;->selectedMarkerId:J

    .line 1106
    iget p1, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_2

    if-ne p2, v3, :cond_13

    .line 1108
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-nez v5, :cond_0

    goto/16 :goto_1

    .line 1112
    :cond_0
    iget-wide p1, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    const-wide/16 v6, 0x0

    cmp-long p1, p1, v6

    if-nez p1, :cond_1

    .line 1113
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V

    .line 1114
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 1116
    :cond_1
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    new-array p2, v3, [Lorg/telegram/ui/ActionBar/AlertDialog;

    aput-object p1, p2, v2

    .line 1117
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_channels_editLocation;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_channels_editLocation;-><init>()V

    .line 1118
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_editLocation;->address:Ljava/lang/String;

    .line 1119
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    neg-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_editLocation;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1120
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_editLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    .line 1121
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    .line 1122
    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iput-wide v3, v0, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    .line 1123
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p2, v5}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/LocationActivity;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    .line 1133
    aget-object v0, p2, v2

    new-instance v1, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/LocationActivity;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1134
    aget-object p1, p2, v2

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_2
    const/4 v0, 0x5

    const/high16 v4, 0x40800000    # 4.0f

    if-ne p1, v0, :cond_3

    .line 1138
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz p1, :cond_13

    .line 1139
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object p2

    new-instance v0, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-direct {v0, v2, v3, v5, v6}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->getMaxZoomLevel()F

    move-result v1

    sub-float/2addr v1, v4

    invoke-interface {p2, v0, v1}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/messenger/IMapsProvider$IMap;->animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    return-void

    :cond_3
    const/4 p1, 0x6

    if-ne p2, v3, :cond_5

    .line 1141
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    if-ne v0, p1, :cond_5

    .line 1142
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz p1, :cond_13

    .line 1143
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object p2

    new-instance v0, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-direct {v0, v2, v3, v5, v6}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->getMaxZoomLevel()F

    move-result v1

    sub-float/2addr v1, v4

    invoke-interface {p2, v0, v1}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/messenger/IMapsProvider$IMap;->animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    return-void

    :cond_5
    const/4 v0, 0x2

    if-ne p2, v3, :cond_8

    .line 1145
    iget v5, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    if-eq v5, v0, :cond_8

    .line 1146
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    if-eqz p1, :cond_13

    .line 1147
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->lastPressedMarkerView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_6

    .line 1148
    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    return-void

    .line 1150
    :cond_6
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    .line 1151
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 1152
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v2

    iput-wide v2, p1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 1153
    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v2

    iput-wide v2, p1, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 1154
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1155
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    new-instance p2, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda27;

    invoke-direct {p2, p0, v1}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;)V

    invoke-static {p1, v2, v3, p2}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    return-void

    .line 1160
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    iget v2, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v3, 0x1

    invoke-interface/range {v0 .. v6}, Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V

    .line 1161
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 1165
    :cond_8
    iget v5, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    if-ne v5, v0, :cond_9

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/LocationController;->isSharingLocation(J)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v5, p2}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->getItemViewType(I)I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_9

    .line 1166
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/LocationController;->removeSharingLocation(J)V

    .line 1167
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1168
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 1169
    :cond_9
    iget v5, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    if-ne v5, v0, :cond_b

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/LocationController;->isSharingLocation(J)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v5, p2}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->getItemViewType(I)I

    move-result v5

    if-ne v5, p1, :cond_b

    .line 1170
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->period:I

    const p2, 0x7fffffff

    if-eq p1, p2, :cond_a

    goto :goto_0

    :cond_a
    move v3, v2

    :goto_0
    invoke-direct {p0, v3, v2}, Lorg/telegram/ui/LocationActivity;->openShareLiveLocation(ZI)V

    return-void

    :cond_b
    if-ne p2, v0, :cond_c

    .line 1171
    iget p1, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    if-eq p1, v3, :cond_e

    :cond_c
    if-ne p2, v3, :cond_d

    iget p1, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    if-eq p1, v0, :cond_e

    :cond_d
    if-ne p2, v1, :cond_10

    iget p1, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    if-ne p1, v1, :cond_10

    .line 1172
    :cond_e
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/LocationController;->isSharingLocation(J)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1173
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/LocationController;->removeSharingLocation(J)V

    .line 1174
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1175
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 1177
    :cond_f
    invoke-direct {p0, v2, v2}, Lorg/telegram/ui/LocationActivity;->openShareLiveLocation(ZI)V

    return-void

    .line 1180
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 1181
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz p2, :cond_12

    .line 1182
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p2

    if-eqz p2, :cond_11

    .line 1183
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    new-instance v2, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda28;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/LocationActivity;Ljava/lang/Object;)V

    invoke-static {p2, v0, v1, v2}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    return-void

    .line 1188
    :cond_11
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    move-object v4, p1

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    iget v5, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v3 .. v9}, Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V

    .line 1189
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 1191
    :cond_12
    instance-of p2, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;

    if-eqz p2, :cond_13

    .line 1192
    check-cast p1, Lorg/telegram/ui/LocationActivity$LiveLocation;

    .line 1193
    iget-wide v0, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->id:J

    iput-wide v0, p0, Lorg/telegram/ui/LocationActivity;->selectedMarkerId:J

    .line 1194
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/ui/LocationActivity$LiveLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {p1}, Lorg/telegram/messenger/IMapsProvider$IMarker;->getPosition()Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->getMaxZoomLevel()F

    move-result v1

    sub-float/2addr v1, v4

    invoke-interface {v0, p1, v1}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    :cond_13
    :goto_1
    return-void
.end method

.method private synthetic lambda$createView$18(Landroid/view/MotionEvent;Lorg/telegram/messenger/IMapsProvider$ICallableMethod;)Z
    .locals 3

    .line 1207
    iget v0, p0, Lorg/telegram/ui/LocationActivity;->yOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1208
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1209
    iget v0, p0, Lorg/telegram/ui/LocationActivity;->yOffset:F

    neg-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1211
    :goto_0
    invoke-interface {p2, p1}, Lorg/telegram/messenger/IMapsProvider$ICallableMethod;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz v0, :cond_1

    .line 1213
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    return p1
.end method

.method private synthetic lambda$createView$19(Landroid/view/MotionEvent;Lorg/telegram/messenger/IMapsProvider$ICallableMethod;)Z
    .locals 7

    .line 1218
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-nez v0, :cond_6

    .line 1219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0xc8

    if-nez v0, :cond_1

    .line 1220
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 1221
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1223
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;

    .line 1224
    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1225
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v5, p0, Lorg/telegram/ui/LocationActivity;->markerTop:I

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    new-array v6, v2, [F

    aput v5, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v4, v2, [Landroid/animation/Animator;

    aput-object v3, v4, v1

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1226
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1227
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1228
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 1229
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    const/4 v0, 0x0

    .line 1231
    iput v0, p0, Lorg/telegram/ui/LocationActivity;->yOffset:F

    .line 1232
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;

    .line 1233
    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1234
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget v5, p0, Lorg/telegram/ui/LocationActivity;->markerTop:I

    int-to-float v5, v5

    new-array v6, v2, [F

    aput v5, v6, v1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v4, v2, [Landroid/animation/Animator;

    aput-object v3, v4, v1

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1235
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1236
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->fetchLocationAddress()V

    .line 1238
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 1239
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->userLocationMoved:Z

    if-nez v0, :cond_4

    .line 1240
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_location_actionIcon:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1241
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1242
    iput-boolean v2, p0, Lorg/telegram/ui/LocationActivity;->userLocationMoved:Z

    .line 1244
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz v0, :cond_5

    .line 1245
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    if-eqz v1, :cond_5

    .line 1246
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->getCameraPosition()Lorg/telegram/messenger/IMapsProvider$CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/IMapsProvider$CameraPosition;->target:Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-wide v2, v0, Lorg/telegram/messenger/IMapsProvider$LatLng;->latitude:D

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 1247
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->getCameraPosition()Lorg/telegram/messenger/IMapsProvider$CameraPosition;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/IMapsProvider$CameraPosition;->target:Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-wide v1, v1, Lorg/telegram/messenger/IMapsProvider$LatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 1250
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setCustomLocation(Landroid/location/Location;)V

    .line 1253
    :cond_6
    invoke-interface {p2, p1}, Lorg/telegram/messenger/IMapsProvider$ICallableMethod;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;)V
    .locals 0

    .line 764
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$createView$20()V
    .locals 2

    .line 1256
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->moveToBounds:Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    if-eqz v0, :cond_0

    .line 1257
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->moveCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    const/4 v0, 0x0

    .line 1258
    iput-object v0, p0, Lorg/telegram/ui/LocationActivity;->moveToBounds:Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$21()V
    .locals 1

    .line 1255
    new-instance v0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$22(Lorg/telegram/messenger/IMapsProvider$IMap;)V
    .locals 4

    .line 1274
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    .line 1275
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->getMapThemeResId()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1277
    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->currentMapStyleDark:Z

    .line 1278
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lorg/telegram/messenger/IMapsProvider;->loadRawResourceStyle(Landroid/content/Context;I)Lorg/telegram/messenger/IMapsProvider$IMapStyleOptions;

    move-result-object p1

    .line 1279
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMapStyle(Lorg/telegram/messenger/IMapsProvider$IMapStyleOptions;)V

    .line 1281
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->getFragmentPadding(I)Lorg/telegram/messenger/IMapsProvider$IMap$Padding;

    move-result-object p1

    .line 1282
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    iget v1, p1, Lorg/telegram/messenger/IMapsProvider$IMap$Padding;->left:I

    iget v2, p1, Lorg/telegram/messenger/IMapsProvider$IMap$Padding;->top:I

    iget v3, p1, Lorg/telegram/messenger/IMapsProvider$IMap$Padding;->right:I

    iget p1, p1, Lorg/telegram/messenger/IMapsProvider$IMap$Padding;->bottom:I

    invoke-interface {v0, v1, v2, v3, p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->setPadding(IIII)V

    .line 1283
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->onMapInit()V

    return-void
.end method

.method private synthetic lambda$createView$23(Lorg/telegram/messenger/IMapsProvider$IMapView;)V
    .locals 1

    .line 1269
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1271
    :try_start_0
    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->onCreate(Landroid/os/Bundle;)V

    .line 1272
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object p1

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider;->initializeMaps(Landroid/content/Context;)V

    .line 1273
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    new-instance v0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda40;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getMapAsync(Landroidx/core/util/Consumer;)V

    const/4 p1, 0x1

    .line 1285
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->mapsInitialized:Z

    .line 1286
    iget-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->onResumeCalled:Z

    if-eqz p1, :cond_0

    .line 1287
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {p1}, Lorg/telegram/messenger/IMapsProvider$IMapView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1290
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$24(Lorg/telegram/messenger/IMapsProvider$IMapView;)V
    .locals 1

    .line 1264
    :try_start_0
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->canUseYandexMaps()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1268
    :catch_0
    :cond_0
    new-instance v0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/LocationActivity;Lorg/telegram/messenger/IMapsProvider$IMapView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$25(Ljava/util/ArrayList;)V
    .locals 0

    const/4 p1, 0x0

    .line 1336
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->searchInProgress:Z

    .line 1337
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->updateEmptyView()V

    return-void
.end method

.method private synthetic lambda$createView$26(Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;ZII)V
    .locals 7

    .line 1363
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    iget v2, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    const-wide/16 v5, 0x0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v6}, Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V

    .line 1364
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createView$27(Lorg/telegram/ui/ActionBar/ActionBarMenu;Landroid/view/View;I)V
    .locals 7

    .line 1349
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1350
    iget-object p2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->icon:Ljava/lang/String;

    if-eqz p2, :cond_2

    iget p2, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/16 p3, 0x8

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    .line 1351
    iput-boolean p2, p0, Lorg/telegram/ui/LocationActivity;->userLocationMoved:Z

    .line 1352
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->closeSearchField(Z)V

    .line 1353
    const-string p1, "pin"

    iget-object p2, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->icon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->getMaxZoomLevel()F

    move-result p1

    const/high16 p2, 0x40800000    # 4.0f

    :goto_0
    sub-float/2addr p1, p2

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->getMaxZoomLevel()F

    move-result p1

    const/high16 p2, 0x41100000    # 9.0f

    goto :goto_0

    .line 1354
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object p3

    new-instance v0, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    invoke-interface {p3, v0, p1}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    .line 1355
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    if-eqz p1, :cond_1

    .line 1356
    iget-object p2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    invoke-virtual {p1, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    .line 1357
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    iget-object p2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-virtual {p1, p2, p3}, Landroid/location/Location;->setLongitude(D)V

    .line 1359
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setCustomLocation(Landroid/location/Location;)V

    return-void

    :cond_2
    if-eqz v1, :cond_4

    .line 1360
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    if-eqz p1, :cond_4

    .line 1361
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->parentFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isInScheduleMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1362
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide p2

    new-instance v0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;)V

    invoke-static {p1, p2, p3, v0}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    return-void

    .line 1367
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    iget v2, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v3, 0x1

    invoke-interface/range {v0 .. v6}, Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V

    .line 1368
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$createView$3(I)V
    .locals 3

    .line 766
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    .line 770
    invoke-interface {v0, p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMapType(I)V

    return-void

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    const/4 p1, 0x1

    .line 772
    invoke-interface {v0, p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMapType(I)V

    return-void

    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 774
    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMapType(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/view/View;)V
    .locals 8

    .line 797
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 799
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 800
    invoke-direct {p0, v0}, Lorg/telegram/ui/LocationActivity;->showPermissionAlert(Z)V

    return-void

    .line 805
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->checkGpsEnabled()Z

    move-result p1

    const/4 v1, 0x3

    if-nez p1, :cond_1

    iget p1, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    if-eq p1, v1, :cond_1

    return-void

    .line 808
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    if-ne p1, v1, :cond_3

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-eqz p1, :cond_4

    .line 809
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz p1, :cond_6

    .line 810
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v2}, Lorg/telegram/messenger/IMapsProvider$IMap;->getMaxZoomLevel()F

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    sub-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    goto :goto_0

    .line 813
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz p1, :cond_6

    .line 814
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_location_actionActiveIcon:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 815
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 816
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setCustomLocation(Landroid/location/Location;)V

    .line 817
    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->userLocationMoved:Z

    .line 818
    invoke-direct {p0, v0}, Lorg/telegram/ui/LocationActivity;->showSearchPlacesButton(Z)V

    .line 819
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    iget-object v6, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    invoke-interface {v2, v3}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLng(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/telegram/messenger/IMapsProvider$IMap;->animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    .line 820
    iget-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->searchedForCustomLocations:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/16 v2, 0x8

    if-eq p1, v2, :cond_6

    .line 821
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    if-eqz p1, :cond_5

    .line 822
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p1, v3, v3}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchPlacesWithQuery(Ljava/lang/String;Landroid/location/Location;ZZ)V

    .line 824
    :cond_5
    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->searchedForCustomLocations:Z

    .line 825
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->showResults()V

    .line 829
    :cond_6
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->removeInfoView()V

    return-void
.end method

.method private synthetic lambda$createView$5()V
    .locals 5

    .line 864
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/telegram/messenger/LocationController;->setProximityLocation(JIZ)Z

    .line 865
    iput-boolean v4, p0, Lorg/telegram/ui/LocationActivity;->canUndo:Z

    return-void
.end method

.method private synthetic lambda$createView$6(Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V
    .locals 2

    .line 867
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_location_alert2:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 868
    iget p1, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->proximityMeters:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->createCircle(I)V

    const/4 p1, 0x0

    .line 869
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->canUndo:Z

    return-void
.end method

.method private synthetic lambda$createView$7(Landroid/view/View;)V
    .locals 11

    .line 843
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->checkGpsEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-nez p1, :cond_0

    goto :goto_0

    .line 846
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz p1, :cond_1

    .line 847
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 849
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 850
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "proximityhint"

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 851
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object p1

    .line 852
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->canUndo:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 853
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    :cond_2
    if-eqz p1, :cond_4

    .line 855
    iget v0, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->proximityMeters:I

    if-lez v0, :cond_4

    .line 856
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_location_alert:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 857
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    if-eqz v0, :cond_3

    .line 858
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$ICircle;->remove()V

    const/4 v0, 0x0

    .line 859
    iput-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    .line 861
    :cond_3
    iput-boolean v2, p0, Lorg/telegram/ui/LocationActivity;->canUndo:Z

    .line 862
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v9, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda29;

    invoke-direct {v9, p0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/LocationActivity;)V

    new-instance v10, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda30;

    invoke-direct {v10, p0, p1}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/LocationActivity;Lorg/telegram/messenger/LocationController$SharingLocationInfo;)V

    const-wide/16 v4, 0x0

    const/16 v6, 0x19

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void

    .line 873
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->openProximityAlert()V

    :cond_5
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$9()V
    .locals 1

    const/4 v0, 0x0

    .line 1038
    invoke-direct {p0, v0}, Lorg/telegram/ui/LocationActivity;->updateClipView(Z)V

    return-void
.end method

.method private synthetic lambda$fixLayoutInternal$40(I)V
    .locals 2

    .line 2326
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    neg-int p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2327
    invoke-direct {p0, v1}, Lorg/telegram/ui/LocationActivity;->updateClipView(Z)V

    return-void
.end method

.method private synthetic lambda$getRecentLocations$41()V
    .locals 3

    .line 2591
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/LocationController;->markLiveLoactionsAsRead(J)V

    .line 2592
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->markAsReadRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x1388

    .line 2595
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$getRecentLocations$42(Lorg/telegram/tgnet/TLObject;J)V
    .locals 5

    .line 2572
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2575
    :cond_0
    check-cast p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    const/4 v0, 0x0

    move v1, v0

    .line 2576
    :goto_0
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 2577
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    if-nez v2, :cond_1

    .line 2578
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_1
    add-int/2addr v1, v3

    goto :goto_0

    .line 2582
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v4, v3, v3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 2583
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 2584
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 2585
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/LocationController;->locationsCache:Landroidx/collection/LongSparseArray;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, p3, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2586
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->liveLocationsCacheChanged:I

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    aput-object p2, p3, v0

    invoke-virtual {v1, v2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2587
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->fetchRecentLocations(Ljava/util/ArrayList;)V

    .line 2588
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/LocationController;->markLiveLoactionsAsRead(J)V

    .line 2589
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->markAsReadRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_3

    .line 2590
    new-instance p1, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda48;

    invoke-direct {p1, p0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/LocationActivity;)V

    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->markAsReadRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0x1388

    .line 2597
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$getRecentLocations$43(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 2571
    new-instance p4, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda47;

    invoke-direct {p4, p0, p3, p1, p2}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLObject;J)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$47()V
    .locals 6

    .line 2898
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_location_actionIcon:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 2899
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 2900
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 2901
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 2903
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2904
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->shadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2906
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz v0, :cond_1

    .line 2907
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->getMapThemeResId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2909
    iget-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->currentMapStyleDark:Z

    if-nez v1, :cond_1

    .line 2910
    iput-boolean v2, p0, Lorg/telegram/ui/LocationActivity;->currentMapStyleDark:Z

    .line 2911
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, Lorg/telegram/messenger/IMapsProvider;->loadRawResourceStyle(Landroid/content/Context;I)Lorg/telegram/messenger/IMapsProvider$IMapStyleOptions;

    move-result-object v0

    .line 2912
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v1, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMapStyle(Lorg/telegram/messenger/IMapsProvider$IMapStyleOptions;)V

    .line 2913
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    .line 2914
    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$ICircle;->setStrokeColor(I)V

    .line 2915
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    const v1, 0x20ffffff

    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$ICircle;->setFillColor(I)V

    return-void

    .line 2919
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->currentMapStyleDark:Z

    if-eqz v0, :cond_1

    .line 2920
    iput-boolean v3, p0, Lorg/telegram/ui/LocationActivity;->currentMapStyleDark:Z

    .line 2921
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMapStyle(Lorg/telegram/messenger/IMapsProvider$IMapStyleOptions;)V

    .line 2922
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    if-eqz v0, :cond_1

    const/high16 v1, -0x1000000

    .line 2923
    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$ICircle;->setStrokeColor(I)V

    .line 2924
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    const/high16 v1, 0x20000000

    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$ICircle;->setFillColor(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onCheckGlScreenshot$44(Landroid/view/ViewGroup;Landroid/opengl/GLSurfaceView;)V
    .locals 0

    .line 2799
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2801
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x1

    .line 2804
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->hasScreenshot:Z

    .line 2806
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$onCheckGlScreenshot$45(Landroid/graphics/Bitmap;Landroid/opengl/GLSurfaceView;)V
    .locals 2

    .line 2787
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2788
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2790
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 2792
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2794
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2797
    :goto_0
    new-instance v0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/LocationActivity;Landroid/view/ViewGroup;Landroid/opengl/GLSurfaceView;)V

    const-wide/16 p1, 0x64

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$onCheckGlScreenshot$46(Landroid/opengl/GLSurfaceView;)V
    .locals 15

    .line 2772
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2775
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 2776
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 2777
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 2778
    invoke-virtual {v8, v7}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 2780
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    .line 2781
    invoke-virtual {v13, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2783
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2784
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 2786
    new-instance v1, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda34;

    move-object/from16 v2, p1

    invoke-direct {v1, p0, v0, v2}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/LocationActivity;Landroid/graphics/Bitmap;Landroid/opengl/GLSurfaceView;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onMapInit$34(I)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1968
    invoke-direct {p0, v0}, Lorg/telegram/ui/LocationActivity;->showSearchPlacesButton(Z)V

    .line 1969
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->removeInfoView()V

    const-wide/16 v1, -0x1

    .line 1971
    iput-wide v1, p0, Lorg/telegram/ui/LocationActivity;->selectedMarkerId:J

    .line 1973
    iget-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->scrolling:Z

    if-nez p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 1974
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1976
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1977
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-nez v1, :cond_2

    .line 1978
    iget v1, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const/high16 v1, 0x42840000    # 66.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 1979
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    neg-int v2, v1

    if-ge p1, v2, :cond_2

    .line 1981
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v2}, Lorg/telegram/messenger/IMapsProvider$IMap;->getCameraPosition()Lorg/telegram/messenger/IMapsProvider$CameraPosition;

    move-result-object v2

    .line 1982
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v3

    iget-object v4, v2, Lorg/telegram/messenger/IMapsProvider$CameraPosition;->target:Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget v2, v2, Lorg/telegram/messenger/IMapsProvider$CameraPosition;->zoom:F

    invoke-interface {v3, v4, v2}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/LocationActivity;->forceUpdate:Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    .line 1983
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    add-int/2addr p1, v1

    invoke-virtual {v2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onMapInit$35(Landroid/location/Location;)V
    .locals 2

    .line 1991
    invoke-direct {p0, p1}, Lorg/telegram/ui/LocationActivity;->positionMarker(Landroid/location/Location;)V

    .line 1992
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->isFirstLocation:Z

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/LocationController;->setMapLocation(Landroid/location/Location;Z)V

    const/4 p1, 0x0

    .line 1993
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->isFirstLocation:Z

    return-void
.end method

.method private synthetic lambda$onMapInit$36(FLorg/telegram/messenger/IMapsProvider$IMarker;)Z
    .locals 6

    .line 1996
    invoke-interface {p2}, Lorg/telegram/messenger/IMapsProvider$IMarker;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/LocationActivity$VenueLocation;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1999
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2000
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->userLocationMoved:Z

    if-nez v0, :cond_1

    .line 2001
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_location_actionIcon:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2002
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2003
    iput-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->userLocationMoved:Z

    :cond_1
    const/4 v0, 0x0

    .line 2005
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->markers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 2006
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->markers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/LocationActivity$LiveLocation;

    if-eqz v2, :cond_2

    .line 2007
    iget-object v3, v2, Lorg/telegram/ui/LocationActivity$LiveLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    if-ne v3, p2, :cond_2

    .line 2008
    iget-wide v3, v2, Lorg/telegram/ui/LocationActivity$LiveLocation;->id:J

    iput-wide v3, p0, Lorg/telegram/ui/LocationActivity;->selectedMarkerId:J

    .line 2009
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v3

    iget-object v2, v2, Lorg/telegram/ui/LocationActivity$LiveLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {v2}, Lorg/telegram/messenger/IMapsProvider$IMarker;->getPosition()Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object v2

    invoke-interface {v3, v2, p1}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2013
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/LocationActivity$MapOverlayView;->addInfoView(Lorg/telegram/messenger/IMapsProvider$IMarker;)V

    return v1
.end method

.method private synthetic lambda$onMapInit$37()V
    .locals 1

    .line 2017
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    if-eqz v0, :cond_0

    .line 2018
    invoke-virtual {v0}, Lorg/telegram/ui/LocationActivity$MapOverlayView;->updatePositions()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$openProximityAlert$28(ZI)Z
    .locals 7

    .line 1615
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    int-to-double v2, p2

    .line 1616
    invoke-interface {v0, v2, v3}, Lorg/telegram/messenger/IMapsProvider$ICircle;->setRadius(D)V

    if-eqz p1, :cond_0

    .line 1618
    invoke-direct {p0, p2, v1, v1}, Lorg/telegram/ui/LocationActivity;->moveToBounds(IZZ)V

    .line 1621
    :cond_0
    iget-wide v2, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 1624
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->markers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, p1, :cond_4

    .line 1625
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->markers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/LocationActivity$LiveLocation;

    .line 1626
    iget-object v4, v3, Lorg/telegram/ui/LocationActivity$LiveLocation;->object:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lorg/telegram/ui/LocationActivity$LiveLocation;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1629
    :cond_2
    iget-object v3, v3, Lorg/telegram/ui/LocationActivity$LiveLocation;->object:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 1630
    new-instance v4, Landroid/location/Location;

    const-string v5, "network"

    invoke-direct {v4, v5}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1631
    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    invoke-virtual {v4, v5, v6}, Landroid/location/Location;->setLatitude(D)V

    .line 1632
    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-virtual {v4, v5, v6}, Landroid/location/Location;->setLongitude(D)V

    .line 1633
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v3, v4}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v3

    int-to-float v4, p2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    return v1

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method private synthetic lambda$openProximityAlert$29(Lorg/telegram/tgnet/TLRPC$User;ILorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/16 p3, 0x384

    .line 1644
    invoke-direct {p0, p1, p3, p2}, Lorg/telegram/ui/LocationActivity;->shareLiveLocation(Lorg/telegram/tgnet/TLRPC$User;II)V

    return-void
.end method

.method private synthetic lambda$openProximityAlert$30(Lorg/telegram/tgnet/TLRPC$User;ZI)Z
    .locals 9

    .line 1639
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object p2

    iget-wide v0, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object p2

    if-nez p2, :cond_0

    .line 1641
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1642
    sget v0, Lorg/telegram/messenger/R$string;->ShareLocationAlertTitle:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1643
    sget v0, Lorg/telegram/messenger/R$string;->ShareLocationAlertText:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1644
    sget v0, Lorg/telegram/messenger/R$string;->ShareLocationAlertButton:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda45;

    invoke-direct {v1, p0, p1, p3}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLRPC$User;I)V

    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1645
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1646
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 p1, 0x0

    return p1

    .line 1649
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ProximitySheet;->setRadiusSet()V

    .line 1650
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_location_alert2:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1651
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v2, 0x0

    const/16 v4, 0x18

    move-object v6, p1

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 1652
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    const/4 p2, 0x1

    invoke-virtual {p1, v0, v1, p3, p2}, Lorg/telegram/messenger/LocationController;->setProximityLocation(JIZ)Z

    return p2
.end method

.method private synthetic lambda$openProximityAlert$31()V
    .locals 6

    .line 1655
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz v0, :cond_0

    const/high16 v1, 0x41200000    # 10.0f

    .line 1656
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->getFragmentPadding(I)Lorg/telegram/messenger/IMapsProvider$IMap$Padding;

    move-result-object v0

    .line 1657
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    iget v2, v0, Lorg/telegram/messenger/IMapsProvider$IMap$Padding;->left:I

    iget v3, v0, Lorg/telegram/messenger/IMapsProvider$IMap$Padding;->top:I

    iget v4, v0, Lorg/telegram/messenger/IMapsProvider$IMap$Padding;->right:I

    iget v0, v0, Lorg/telegram/messenger/IMapsProvider$IMap$Padding;->bottom:I

    invoke-interface {v1, v2, v3, v4, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->setPadding(IIII)V

    .line 1659
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProximitySheet;->getRadiusSet()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1660
    iget-wide v2, p0, Lorg/telegram/ui/LocationActivity;->previousRadius:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    .line 1661
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    invoke-interface {v0, v2, v3}, Lorg/telegram/messenger/IMapsProvider$ICircle;->setRadius(D)V

    goto :goto_0

    .line 1662
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    if-eqz v0, :cond_2

    .line 1663
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$ICircle;->remove()V

    .line 1664
    iput-object v1, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    .line 1667
    :cond_2
    :goto_0
    iput-object v1, p0, Lorg/telegram/ui/LocationActivity;->proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

    return-void
.end method

.method private synthetic lambda$openShareLiveLocation$32(Z)V
    .locals 1

    .line 1687
    iget v0, p0, Lorg/telegram/ui/LocationActivity;->askWithRadius:I

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LocationActivity;->openShareLiveLocation(ZI)V

    return-void
.end method

.method private synthetic lambda$openShareLiveLocation$33(ZLorg/telegram/tgnet/TLRPC$User;II)V
    .locals 5

    if-eqz p1, :cond_6

    .line 1700
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1702
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;-><init>()V

    .line 1703
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-wide v0, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->did:J

    invoke-virtual {p3, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p3

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1704
    iget p3, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->mid:I

    iput p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->id:I

    .line 1705
    iget p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    or-int/lit16 p3, p3, 0x4000

    iput p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    .line 1706
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoLive;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoLive;-><init>()V

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    const/4 v0, 0x0

    .line 1707
    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$InputMedia;->stopped:Z

    .line 1708
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    .line 1709
    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/LocationController;->getInstance(I)Lorg/telegram/messenger/LocationController;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/LocationController;->getLastKnownLocation()Landroid/location/Location;

    move-result-object p3

    .line 1710
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    .line 1711
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    .line 1712
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    invoke-virtual {p3}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->accuracy_radius:I

    .line 1713
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->accuracy_radius:I

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 1714
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->flags:I

    or-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->flags:I

    .line 1716
    :cond_0
    iget v2, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->lastSentProximityMeters:I

    iget v3, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->proximityMeters:I

    if-eq v2, v3, :cond_1

    .line 1717
    iput v3, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->proximity_notification_radius:I

    .line 1718
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    .line 1720
    :cond_1
    invoke-static {p3}, Lorg/telegram/messenger/LocationController;->getHeading(Landroid/location/Location;)I

    move-result p3

    iput p3, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->heading:I

    .line 1721
    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    iget v1, p3, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/lit8 v2, v1, 0x4

    iput v2, p3, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    const v2, 0x7fffffff

    if-ne p4, v2, :cond_2

    move v3, v2

    goto :goto_0

    .line 1722
    :cond_2
    iget v3, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->period:I

    add-int/2addr v3, p4

    :goto_0
    iput v3, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->period:I

    iput v3, p3, Lorg/telegram/tgnet/TLRPC$InputMedia;->period:I

    if-ne p4, v2, :cond_3

    goto :goto_1

    .line 1723
    :cond_3
    iget v2, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->stopTime:I

    add-int/2addr v2, p4

    :goto_1
    iput v2, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->stopTime:I

    or-int/lit8 p4, v1, 0x6

    .line 1724
    iput p4, p3, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    .line 1725
    iget-object p3, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 p4, 0x0

    if-eqz p3, :cond_4

    iget-object p3, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p3, :cond_4

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p3, :cond_4

    .line 1726
    iput v3, p3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->period:I

    .line 1729
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p3

    iget-object p1, p1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p3, p1, p4, p4, v4}, Lorg/telegram/messenger/MessagesStorage;->replaceMessageIfExists(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 1731
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1, p2, p4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1732
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_5
    return-void

    .line 1736
    :cond_6
    invoke-direct {p0, p2, p4, p3}, Lorg/telegram/ui/LocationActivity;->shareLiveLocation(Lorg/telegram/tgnet/TLRPC$User;II)V

    return-void
.end method

.method private synthetic lambda$showPermissionAlert$39(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 1

    .line 2112
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2116
    :cond_0
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2117
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2118
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2120
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private maybeShowProximityHint()V
    .locals 7

    .line 2160
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->proximityAnimationInProgress:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2163
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2164
    const-string v1, "proximityhint"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    .line 2166
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2167
    iget-wide v0, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2168
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v5, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 2169
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    sget v3, Lorg/telegram/messenger/R$string;->ProximityTooltioUser:I

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const-string v0, "ProximityTooltioUser"

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    goto :goto_0

    .line 2171
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    sget v1, Lorg/telegram/messenger/R$string;->ProximityTooltioGroup:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 2173
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_2
    :goto_1
    return-void
.end method

.method private static meterToLatitude(D)D
    .locals 2

    const-wide v0, 0x415848fd80000000L    # 6366198.0

    div-double/2addr p0, v0

    .line 2432
    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static meterToLongitude(DD)D
    .locals 2

    .line 2423
    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    .line 2424
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    const-wide v0, 0x415848fd80000000L    # 6366198.0

    mul-double/2addr p2, v0

    div-double/2addr p0, p2

    .line 2426
    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static move(Lorg/telegram/messenger/IMapsProvider$LatLng;DD)Lorg/telegram/messenger/IMapsProvider$LatLng;
    .locals 3

    .line 2417
    iget-wide v0, p0, Lorg/telegram/messenger/IMapsProvider$LatLng;->latitude:D

    invoke-static {p3, p4, v0, v1}, Lorg/telegram/ui/LocationActivity;->meterToLongitude(DD)D

    move-result-wide p3

    .line 2418
    invoke-static {p1, p2}, Lorg/telegram/ui/LocationActivity;->meterToLatitude(D)D

    move-result-wide p1

    .line 2419
    new-instance v0, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-wide v1, p0, Lorg/telegram/messenger/IMapsProvider$LatLng;->latitude:D

    add-double/2addr v1, p1

    iget-wide p0, p0, Lorg/telegram/messenger/IMapsProvider$LatLng;->longitude:D

    add-double/2addr p0, p3

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    return-object v0
.end method

.method private moveToBounds(IZZ)V
    .locals 8

    .line 2494
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider;->onCreateLatLngBoundsBuilder()Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;

    move-result-object v0

    .line 2495
    new-instance v1, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->include(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/16 p2, 0xfa

    .line 2498
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2499
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->build()Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;

    move-result-object p2

    .line 2500
    invoke-interface {p2}, Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;->getCenter()Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object p2

    int-to-double v2, p1

    .line 2501
    invoke-static {p2, v2, v3, v2, v3}, Lorg/telegram/ui/LocationActivity;->move(Lorg/telegram/messenger/IMapsProvider$LatLng;DD)Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object v2

    neg-int p1, p1

    int-to-double v3, p1

    .line 2502
    invoke-static {p2, v3, v4, v3, v4}, Lorg/telegram/ui/LocationActivity;->move(Lorg/telegram/messenger/IMapsProvider$LatLng;DD)Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object p1

    .line 2503
    invoke-interface {v0, p1}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->include(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;

    .line 2504
    invoke-interface {v0, v2}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->include(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;

    .line 2505
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->build()Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2507
    :try_start_1
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ProximitySheet;->getCustomView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 2508
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v0, p2}, Lorg/telegram/messenger/IMapsProvider$IMap;->getFragmentPadding(I)Lorg/telegram/messenger/IMapsProvider$IMap$Padding;

    move-result-object p2

    .line 2509
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    iget v2, p2, Lorg/telegram/messenger/IMapsProvider$IMap$Padding;->left:I

    iget v3, p2, Lorg/telegram/messenger/IMapsProvider$IMap$Padding;->top:I

    iget v4, p2, Lorg/telegram/messenger/IMapsProvider$IMap$Padding;->right:I

    iget p2, p2, Lorg/telegram/messenger/IMapsProvider$IMap$Padding;->bottom:I

    invoke-interface {v0, v2, v3, v4, p2}, Lorg/telegram/messenger/IMapsProvider$IMap;->setPadding(IIII)V

    if-eqz p3, :cond_0

    .line 2511
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object p3

    invoke-interface {p3, p1, v1}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngBounds(Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;I)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object p1

    const/16 p3, 0x1f4

    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;ILorg/telegram/messenger/IMapsProvider$ICancelableCallback;)V

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    .line 2513
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object p3

    invoke-interface {p3, p1, v1}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngBounds(Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;I)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->moveCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 2516
    :goto_0
    :try_start_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 2522
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p1

    .line 2523
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->markers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    move p3, v1

    :goto_1
    if-ge p3, p2, :cond_3

    .line 2524
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->markers:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/LocationActivity$LiveLocation;

    iget-object v2, v2, Lorg/telegram/ui/LocationActivity$LiveLocation;->object:Lorg/telegram/tgnet/TLRPC$Message;

    .line 2525
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->period:I

    add-int/2addr v3, v4

    if-le v3, p1, :cond_2

    .line 2526
    new-instance v3, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    .line 2527
    invoke-interface {v0, v3}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->include(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 2531
    :cond_3
    :try_start_3
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->build()Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;

    move-result-object p1

    .line 2532
    invoke-interface {p1}, Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;->getCenter()Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object p1

    const-wide/high16 p2, 0x4059000000000000L    # 100.0

    .line 2533
    invoke-static {p1, p2, p3, p2, p3}, Lorg/telegram/ui/LocationActivity;->move(Lorg/telegram/messenger/IMapsProvider$LatLng;DD)Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object p2

    const-wide/high16 v2, -0x3fa7000000000000L    # -100.0

    .line 2534
    invoke-static {p1, v2, v3, v2, v3}, Lorg/telegram/ui/LocationActivity;->move(Lorg/telegram/messenger/IMapsProvider$LatLng;DD)Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object p1

    .line 2535
    invoke-interface {v0, p1}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->include(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;

    .line 2536
    invoke-interface {v0, p2}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->include(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;

    .line 2537
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$ILatLngBoundsBuilder;->build()Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2539
    :try_start_4
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ProximitySheet;->getCustomView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/high16 p3, 0x42c80000    # 100.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sub-int/2addr p2, p3

    .line 2540
    iget-object p3, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {p3, p2}, Lorg/telegram/messenger/IMapsProvider$IMap;->getFragmentPadding(I)Lorg/telegram/messenger/IMapsProvider$IMap$Padding;

    move-result-object p2

    .line 2541
    iget-object p3, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    iget v0, p2, Lorg/telegram/messenger/IMapsProvider$IMap$Padding;->left:I

    iget v2, p2, Lorg/telegram/messenger/IMapsProvider$IMap$Padding;->top:I

    iget v3, p2, Lorg/telegram/messenger/IMapsProvider$IMap$Padding;->right:I

    iget p2, p2, Lorg/telegram/messenger/IMapsProvider$IMap$Padding;->bottom:I

    invoke-interface {p3, v0, v2, v3, p2}, Lorg/telegram/messenger/IMapsProvider$IMap;->setPadding(IIII)V

    .line 2542
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object p3

    invoke-interface {p3, p1, v1}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngBounds(Lorg/telegram/messenger/IMapsProvider$ILatLngBounds;I)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->moveCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 2544
    :try_start_5
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :goto_2
    return-void
.end method

.method private onCheckGlScreenshot()Z
    .locals 2

    .line 2769
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getGlSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->hasScreenshot:Z

    if-nez v0, :cond_0

    .line 2770
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getGlSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v0

    .line 2771
    new-instance v1, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/LocationActivity;Landroid/opengl/GLSurfaceView;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onMapInit()V
    .locals 8

    .line 1915
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1919
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1921
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->initialMaxZoom:Z

    const/high16 v1, 0x40800000    # 4.0f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->getMinZoomLevel()F

    move-result v0

    add-float/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->getMaxZoomLevel()F

    move-result v0

    sub-float/2addr v0, v1

    .line 1922
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1923
    invoke-direct {p0, v1}, Lorg/telegram/ui/LocationActivity;->addUserMarker(Lorg/telegram/tgnet/TLRPC$TL_channelLocation;)Lorg/telegram/ui/LocationActivity$LiveLocation;

    move-result-object v1

    .line 1924
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v4

    iget-object v1, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {v1}, Lorg/telegram/messenger/IMapsProvider$IMarker;->getPosition()Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->moveCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    goto/16 :goto_2

    .line 1925
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_4

    .line 1926
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1927
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {p0, v1}, Lorg/telegram/ui/LocationActivity;->addUserMarker(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/ui/LocationActivity$LiveLocation;

    move-result-object v1

    .line 1928
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->getRecentLocations()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1929
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v4

    iget-object v1, v1, Lorg/telegram/ui/LocationActivity$LiveLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {v1}, Lorg/telegram/messenger/IMapsProvider$IMarker;->getPosition()Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->moveCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    goto/16 :goto_2

    .line 1932
    :cond_3
    new-instance v1, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-direct {v1, v3, v4, v5, v6}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    .line 1934
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v4

    invoke-interface {v4}, Lorg/telegram/messenger/IMapsProvider;->onCreateMarkerOptions()Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->position(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->map_pin2:I

    invoke-interface {v4, v5}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->icon(I)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/telegram/messenger/IMapsProvider$IMap;->addMarker(Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;)Lorg/telegram/messenger/IMapsProvider$IMarker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 1936
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1938
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object v1

    .line 1939
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v3, v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->moveCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    .line 1940
    iput-boolean v2, p0, Lorg/telegram/ui/LocationActivity;->firstFocus:Z

    .line 1941
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->getRecentLocations()Z

    goto :goto_2

    .line 1944
    :cond_4
    new-instance v1, Landroid/location/Location;

    const-string v3, "network"

    invoke-direct {v1, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    .line 1945
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->initialLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-eqz v3, :cond_5

    .line 1946
    new-instance v1, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-direct {v1, v4, v5, v6, v7}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    .line 1947
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v4

    invoke-interface {v4, v1, v0}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->moveCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    .line 1948
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->initialLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 1949
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->initialLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    .line 1950
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->initialLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->accuracy_radius:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/location/Location;->setAccuracy(F)V

    .line 1951
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setCustomLocation(Landroid/location/Location;)V

    goto :goto_2

    :cond_5
    const-wide v3, 0x4034a8c9539b8887L    # 20.659322

    .line 1953
    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 1954
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    const-wide v3, -0x3fd9300000000000L    # -11.40625

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    .line 1959
    :cond_6
    :goto_2
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMyLocationEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 1961
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1963
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->getUiSettings()Lorg/telegram/messenger/IMapsProvider$IUISettings;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/telegram/messenger/IMapsProvider$IUISettings;->setMyLocationButtonEnabled(Z)V

    .line 1964
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->getUiSettings()Lorg/telegram/messenger/IMapsProvider$IUISettings;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/telegram/messenger/IMapsProvider$IUISettings;->setZoomControlsEnabled(Z)V

    .line 1965
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->getUiSettings()Lorg/telegram/messenger/IMapsProvider$IUISettings;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/telegram/messenger/IMapsProvider$IUISettings;->setCompassEnabled(Z)V

    .line 1966
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    new-instance v3, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda41;

    invoke-direct {v3, p0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-interface {v1, v3}, Lorg/telegram/messenger/IMapsProvider$IMap;->setOnCameraMoveStartedListener(Lorg/telegram/messenger/IMapsProvider$OnCameraMoveStartedListener;)V

    .line 1990
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    new-instance v3, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda42;

    invoke-direct {v3, p0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-interface {v1, v3}, Lorg/telegram/messenger/IMapsProvider$IMap;->setOnMyLocationChangeListener(Landroidx/core/util/Consumer;)V

    .line 1995
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    new-instance v3, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda43;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/LocationActivity;F)V

    invoke-interface {v1, v3}, Lorg/telegram/messenger/IMapsProvider$IMap;->setOnMarkerClickListener(Lorg/telegram/messenger/IMapsProvider$OnMarkerClickListener;)V

    .line 2016
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    new-instance v1, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda44;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-interface {v0, v1}, Lorg/telegram/messenger/IMapsProvider$IMap;->setOnCameraMoveListener(Ljava/lang/Runnable;)V

    .line 2021
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-direct {p0, v0}, Lorg/telegram/ui/LocationActivity;->positionMarker(Landroid/location/Location;)V

    .line 2023
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->checkGpsEnabled:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2024
    iput-boolean v2, p0, Lorg/telegram/ui/LocationActivity;->checkGpsEnabled:Z

    .line 2025
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->checkGpsEnabled()Z

    .line 2028
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 2029
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2030
    iget v0, v0, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->proximityMeters:I

    if-lez v0, :cond_8

    .line 2031
    invoke-direct {p0, v0}, Lorg/telegram/ui/LocationActivity;->createCircle(I)V

    :cond_8
    :goto_4
    return-void
.end method

.method private openDirections(Lorg/telegram/ui/LocationActivity$LiveLocation;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-eqz v0, :cond_0

    .line 1452
    iget-object v0, v0, Lorg/telegram/ui/LocationActivity$LiveLocation;->object:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_0

    .line 1453
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 1454
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    goto :goto_0

    .line 1455
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    .line 1456
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 1457
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    goto :goto_0

    .line 1459
    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 1460
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 1462
    :goto_0
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->canUseYandexMaps()Z

    move-result v0

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v11, "android.intent.action.VIEW"

    if-eqz v0, :cond_3

    .line 1463
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    if-eqz v0, :cond_2

    .line 1465
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "http://maps.yandex.ru/?rtext=%f,%f~%f,%f"

    iget-object v14, v1, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v14}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    iget-object v15, v1, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v15}, Landroid/location/Location;->getLongitude()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v14, v4, v10

    aput-object v15, v4, v9

    aput-object v2, v4, v8

    aput-object v3, v4, v6

    invoke-static {v12, v13, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1466
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1468
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1472
    :cond_2
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "http://maps.yandex.ru/?rtext=%f,%f"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v10

    aput-object v3, v4, v9

    invoke-static {v6, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1473
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 1475
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1481
    :cond_3
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    const-string v12, "http://maps.google.com/maps"

    if-eqz v0, :cond_4

    .line 1483
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "?saddr=%f,%f&daddr=%f,%f"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v14, v1, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v14}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    iget-object v15, v1, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v15}, Landroid/location/Location;->getLongitude()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v14, v4, v10

    aput-object v15, v4, v9

    aput-object v2, v4, v8

    aput-object v3, v4, v6

    invoke-static {v13, v12, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1484
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception v0

    .line 1486
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1490
    :cond_4
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "?saddr=&daddr=%f,%f"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v10

    aput-object v3, v4, v9

    invoke-static {v6, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1491
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    move-exception v0

    .line 1493
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private openProximityAlert()V
    .locals 7

    .line 1602
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    if-nez v0, :cond_0

    const/16 v0, 0x1f4

    .line 1603
    invoke-direct {p0, v0}, Lorg/telegram/ui/LocationActivity;->createCircle(I)V

    goto :goto_0

    .line 1605
    :cond_0
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$ICircle;->getRadius()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/LocationActivity;->previousRadius:D

    .line 1609
    :goto_0
    iget-wide v0, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1610
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    :goto_1
    move-object v3, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1614
    :goto_2
    new-instance v1, Lorg/telegram/ui/Components/ProximitySheet;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda36;

    invoke-direct {v4, p0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/LocationActivity;)V

    new-instance v5, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda37;

    invoke-direct {v5, p0, v3}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/LocationActivity;Lorg/telegram/tgnet/TLRPC$User;)V

    new-instance v6, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda38;

    invoke-direct {v6, p0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/ProximitySheet;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/ProximitySheet$onRadiusPickerChange;Lorg/telegram/ui/Components/ProximitySheet$onRadiusPickerChange;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lorg/telegram/ui/LocationActivity;->proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

    .line 1669
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    .line 1670
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1671
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProximitySheet;->show()V

    return-void
.end method

.method private openShareLiveLocation(ZI)V
    .locals 11

    .line 1675
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/LocationActivity;->disablePermissionCheck()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->checkGpsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1678
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->checkBackgroundPermission:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    .line 1679
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1681
    iput p2, p0, Lorg/telegram/ui/LocationActivity;->askWithRadius:I

    const/4 v2, 0x0

    .line 1682
    iput-boolean v2, p0, Lorg/telegram/ui/LocationActivity;->checkBackgroundPermission:Z

    .line 1683
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1684
    const-string v4, "backgroundloc"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1685
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    int-to-long v9, v2

    sub-long/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/32 v9, 0x15180

    cmp-long v2, v5, v9

    if-lez v2, :cond_1

    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1686
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v7

    long-to-int v2, v2

    invoke-interface {p2, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1687
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    new-instance v2, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/LocationActivity;Z)V

    invoke-static {v0, p2, v2, v1}, Lorg/telegram/ui/Components/AlertsCreator;->createBackgroundLocationPermissionDialog(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 1693
    :cond_1
    iget-wide v2, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1694
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1698
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0, p1, v0, p2}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/LocationActivity;ZLorg/telegram/tgnet/TLRPC$User;I)V

    invoke-static {v2, p1, v0, v3, v1}, Lorg/telegram/ui/Components/AlertsCreator;->createLocationUpdateDialog(Landroid/app/Activity;ZLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/MessagesStorage$IntCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_3
    :goto_1
    return-void
.end method

.method private positionMarker(Landroid/location/Location;)V
    .locals 6

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 2353
    :cond_0
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    .line 2354
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->markersMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LocationActivity$LiveLocation;

    .line 2355
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 2356
    iget-object v2, v0, Lorg/telegram/ui/LocationActivity$LiveLocation;->object:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iget v1, v1, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->mid:I

    if-ne v2, v1, :cond_2

    .line 2357
    new-instance v1, Lorg/telegram/messenger/IMapsProvider$LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    .line 2358
    iget-object v2, v0, Lorg/telegram/ui/LocationActivity$LiveLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {v2, v1}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setPosition(Lorg/telegram/messenger/IMapsProvider$LatLng;)V

    .line 2359
    iget-object v2, v0, Lorg/telegram/ui/LocationActivity$LiveLocation;->directionMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    if-eqz v2, :cond_1

    .line 2360
    invoke-interface {v2, v1}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setPosition(Lorg/telegram/messenger/IMapsProvider$LatLng;)V

    .line 2362
    :cond_1
    iget-wide v1, p0, Lorg/telegram/ui/LocationActivity;->selectedMarkerId:J

    iget-wide v3, v0, Lorg/telegram/ui/LocationActivity$LiveLocation;->id:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 2363
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v2

    iget-object v0, v0, Lorg/telegram/ui/LocationActivity$LiveLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMarker;->getPosition()Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLng(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    .line 2366
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz v0, :cond_6

    .line 2367
    new-instance v0, Lorg/telegram/messenger/IMapsProvider$LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    .line 2368
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz v2, :cond_4

    .line 2369
    iget-boolean v3, p0, Lorg/telegram/ui/LocationActivity;->searchedForCustomLocations:Z

    if-nez v3, :cond_3

    iget v3, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_3

    const/4 v3, 0x0

    .line 2370
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v2, v3, v4, v1}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->searchPlacesWithQuery(Ljava/lang/String;Landroid/location/Location;Z)V

    .line 2372
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setGpsLocation(Landroid/location/Location;)V

    .line 2374
    :cond_4
    iget-boolean v2, p0, Lorg/telegram/ui/LocationActivity;->userLocationMoved:Z

    if-nez v2, :cond_7

    .line 2375
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v2, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    .line 2376
    iget-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->firstWas:Z

    if-eqz p1, :cond_5

    .line 2377
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLng(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object p1

    .line 2378
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    goto :goto_0

    .line 2380
    :cond_5
    iput-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->firstWas:Z

    .line 2381
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v2}, Lorg/telegram/messenger/IMapsProvider$IMap;->getMaxZoomLevel()F

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    sub-float/2addr v2, v3

    invoke-interface {p1, v0, v2}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLngZoom(Lorg/telegram/messenger/IMapsProvider$LatLng;F)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object p1

    .line 2382
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/IMapsProvider$IMap;->moveCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    goto :goto_0

    .line 2386
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setGpsLocation(Landroid/location/Location;)V

    .line 2388
    :cond_7
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

    if-eqz p1, :cond_8

    .line 2389
    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Components/ProximitySheet;->updateText(ZZ)V

    .line 2391
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    if-eqz p1, :cond_9

    .line 2392
    new-instance v0, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider$ICircle;->setCenter(Lorg/telegram/messenger/IMapsProvider$LatLng;)V

    :cond_9
    :goto_1
    return-void
.end method

.method private removeInfoView()V
    .locals 2

    .line 2091
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->lastPressedMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    if-eqz v0, :cond_0

    .line 2092
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2093
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->lastPressedMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LocationActivity$MapOverlayView;->removeInfoView(Lorg/telegram/messenger/IMapsProvider$IMarker;)V

    const/4 v0, 0x0

    .line 2094
    iput-object v0, p0, Lorg/telegram/ui/LocationActivity;->lastPressedMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    .line 2095
    iput-object v0, p0, Lorg/telegram/ui/LocationActivity;->lastPressedVenue:Lorg/telegram/ui/LocationActivity$VenueLocation;

    .line 2096
    iput-object v0, p0, Lorg/telegram/ui/LocationActivity;->lastPressedMarkerView:Landroid/widget/FrameLayout;

    :cond_0
    return-void
.end method

.method private shareLiveLocation(Lorg/telegram/tgnet/TLRPC$User;II)V
    .locals 8

    .line 1741
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeoLive;-><init>()V

    .line 1742
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 1743
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 1744
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->fixLocationCoord(D)D

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 1745
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    invoke-static {v0}, Lorg/telegram/messenger/LocationController;->getHeading(Landroid/location/Location;)I

    move-result v0

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->heading:I

    .line 1746
    iget v0, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 1747
    iput p2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->period:I

    .line 1748
    iput p3, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->proximity_notification_radius:I

    or-int/lit8 p2, v0, 0x9

    .line 1749
    iput p2, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 1750
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    iget v2, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v3, 0x1

    invoke-interface/range {v0 .. v6}, Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;->didSelectLocation(Lorg/telegram/tgnet/TLRPC$MessageMedia;IZIJ)V

    if-lez p3, :cond_1

    .line 1752
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ProximitySheet;->setRadiusSet()V

    .line 1753
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_location_alert2:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1754
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

    if-eqz p2, :cond_0

    .line 1755
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ProximitySheet;->dismiss()V

    .line 1757
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v1, 0x0

    const/16 v3, 0x18

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void

    .line 1759
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private showPermissionAlert(Z)V
    .locals 5

    .line 2101
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2104
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2105
    sget v1, Lorg/telegram/messenger/R$raw;->permission_request_location:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    if-eqz p1, :cond_1

    .line 2107
    sget p1, Lorg/telegram/messenger/R$string;->PermissionNoLocationNavigation:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 2109
    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->PermissionNoLocationFriends:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2111
    :goto_0
    sget p1, Lorg/telegram/messenger/R$string;->PermissionOpenSettings:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2123
    sget p1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2124
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private showResults()V
    .locals 4

    .line 2178
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2181
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2185
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/high16 v2, 0x43810000    # 258.0f

    .line 2186
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v3, v0

    if-ltz v3, :cond_3

    .line 2187
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-le v3, v0, :cond_2

    goto :goto_0

    .line 2190
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method private showSearchPlacesButton(Z)V
    .locals 6

    .line 1514
    iget v0, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move p1, v2

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1517
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1518
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->myLocation:Landroid/location/Location;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    const/high16 v3, 0x43960000    # 300.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    :cond_1
    move p1, v0

    .line 1522
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    if-eqz v1, :cond_7

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    :cond_3
    if-nez p1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 1525
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    if-eqz p1, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1526
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1527
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_1

    :cond_6
    const/high16 p1, 0x42a00000    # 80.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    :goto_1
    new-array v5, v2, [F

    aput p1, v5, v0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0xb4

    .line 1528
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1529
    sget-object p1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1530
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_7
    :goto_2
    return-void
.end method

.method private updateClipView(Z)V
    .locals 8

    .line 2196
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2198
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 2199
    iget v2, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 2201
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    move v2, v1

    .line 2203
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v3, :cond_d

    const/4 v3, 0x4

    if-gtz v2, :cond_1

    .line 2206
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v4}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 2207
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v4}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2208
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2209
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    if-eqz v4, :cond_2

    .line 2210
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2214
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v4}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 2215
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v3}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2216
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2217
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    if-eqz v3, :cond_2

    .line 2218
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2223
    :cond_2
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 2224
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v3}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v3

    neg-int v0, v0

    div-int/lit8 v4, v0, 0x2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 2225
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    if-eqz v3, :cond_3

    .line 2226
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 2228
    :cond_3
    iget v3, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v3, v5

    iget v5, p0, Lorg/telegram/ui/LocationActivity;->locationType:I

    if-eqz v5, :cond_5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    goto :goto_2

    :cond_4
    const/16 v5, 0xa

    goto :goto_3

    :cond_5
    :goto_2
    const/16 v5, 0x1e

    :goto_3
    const/16 v6, 0x40

    add-int/2addr v6, v5

    int-to-float v5, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v3, v5

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    .line 2229
    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2230
    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2231
    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v5, :cond_6

    .line 2232
    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2234
    :cond_6
    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    if-eqz v5, :cond_7

    .line 2235
    invoke-virtual {v5, v3}, Lorg/telegram/ui/LocationActivity$SearchButton;->setTranslation(F)V

    .line 2237
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/view/View;

    if-eqz v3, :cond_9

    .line 2238
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_8

    const/high16 v5, 0x42400000    # 48.0f

    goto :goto_4

    :cond_8
    const/high16 v5, 0x428a0000    # 69.0f

    :goto_4
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v0, v5

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/LocationActivity;->markerTop:I

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_9
    if-nez p1, :cond_d

    .line 2241
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {p1}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v0, 0x41200000    # 10.0f

    if-eqz p1, :cond_b

    .line 2242
    iget v2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v3, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v3, v5

    if-eq v2, v3, :cond_b

    .line 2243
    iget v2, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2244
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz v2, :cond_a

    .line 2245
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/IMapsProvider$IMap;->getFragmentPadding(I)Lorg/telegram/messenger/IMapsProvider$IMap$Padding;

    move-result-object v2

    .line 2246
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    iget v5, v2, Lorg/telegram/messenger/IMapsProvider$IMap$Padding;->left:I

    iget v6, v2, Lorg/telegram/messenger/IMapsProvider$IMap$Padding;->top:I

    iget v7, v2, Lorg/telegram/messenger/IMapsProvider$IMap$Padding;->right:I

    iget v2, v2, Lorg/telegram/messenger/IMapsProvider$IMap$Padding;->bottom:I

    invoke-interface {v3, v5, v6, v7, v2}, Lorg/telegram/messenger/IMapsProvider$IMap;->setPadding(IIII)V

    .line 2248
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v2}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2250
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz p1, :cond_c

    .line 2251
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    invoke-interface {p1, v1, v2}, Lorg/telegram/messenger/IMapsProvider$IMap;->setLogoPadding(II)V

    .line 2253
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    if-eqz p1, :cond_d

    .line 2254
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_d

    .line 2255
    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v2, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v2, v3

    if-eq v1, v2, :cond_d

    .line 2256
    iget v1, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2257
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    return-void
.end method

.method private updateEmptyView()V
    .locals 3

    .line 1500
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->searching:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 1501
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->searchInProgress:Z

    if-eqz v0, :cond_0

    .line 1502
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1503
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1504
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    return-void

    .line 1506
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    return-void

    .line 1509
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updatePlacesMarkers(Ljava/util/ArrayList;)V
    .locals 10

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 1788
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->placeMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1789
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->placeMarkers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/LocationActivity$VenueLocation;

    iget-object v3, v3, Lorg/telegram/ui/LocationActivity$VenueLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {v3}, Lorg/telegram/messenger/IMapsProvider$IMarker;->remove()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1791
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->placeMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1792
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 1793
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    .line 1795
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/messenger/IMapsProvider;->onCreateMarkerOptions()Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-direct {v4, v6, v7, v8, v9}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    invoke-interface {v3, v4}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->position(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    move-result-object v3

    .line 1796
    invoke-direct {p0, v1}, Lorg/telegram/ui/LocationActivity;->createPlaceBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->icon(Landroid/graphics/Bitmap;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    const/high16 v4, 0x3f000000    # 0.5f

    .line 1797
    invoke-interface {v3, v4, v4}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->anchor(FF)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    .line 1798
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->title(Ljava/lang/String;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    .line 1799
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;->snippet(Ljava/lang/String;)Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;

    .line 1800
    new-instance v4, Lorg/telegram/ui/LocationActivity$VenueLocation;

    invoke-direct {v4}, Lorg/telegram/ui/LocationActivity$VenueLocation;-><init>()V

    .line 1801
    iput v1, v4, Lorg/telegram/ui/LocationActivity$VenueLocation;->num:I

    .line 1802
    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-interface {v5, v3}, Lorg/telegram/messenger/IMapsProvider$IMap;->addMarker(Lorg/telegram/messenger/IMapsProvider$IMarkerOptions;)Lorg/telegram/messenger/IMapsProvider$IMarker;

    move-result-object v3

    iput-object v3, v4, Lorg/telegram/ui/LocationActivity$VenueLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    .line 1803
    iput-object v2, v4, Lorg/telegram/ui/LocationActivity$VenueLocation;->venue:Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    .line 1804
    invoke-interface {v3, v4}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setTag(Ljava/lang/Object;)V

    .line 1805
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->placeMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 1807
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 44

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v11, 0x0

    .line 537
    iput-boolean v11, v1, Lorg/telegram/ui/LocationActivity;->searchWas:Z

    .line 538
    iput-boolean v11, v1, Lorg/telegram/ui/LocationActivity;->searching:Z

    .line 539
    iput-boolean v11, v1, Lorg/telegram/ui/LocationActivity;->searchInProgress:Z

    .line 540
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->destroy()V

    .line 543
    :cond_0
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    if-eqz v0, :cond_1

    .line 544
    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->destroy()V

    .line 546
    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    const-string v3, "network"

    if-eqz v0, :cond_2

    .line 547
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    .line 548
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 549
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelLocation;->geo_point:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    goto :goto_0

    .line 550
    :cond_2
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_3

    .line 551
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    .line 552
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 553
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->userLocation:Landroid/location/Location;

    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    .line 555
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v12, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v12

    goto :goto_1

    :cond_4
    move v0, v11

    :goto_1
    iput-boolean v0, v1, Lorg/telegram/ui/LocationActivity;->locationDenied:Z

    .line 557
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {v1, v13}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 558
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 559
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 560
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 561
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 562
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 563
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 564
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 566
    :cond_5
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 568
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/LocationActivity$1;

    invoke-direct {v4, v1}, Lorg/telegram/ui/LocationActivity$1;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 589
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v14

    .line 590
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    const/4 v15, 0x6

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eqz v0, :cond_6

    .line 591
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->ChatLocation:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 592
    :cond_6
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_a

    .line 593
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 594
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->AttachLiveLocation:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 595
    sget v0, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-virtual {v14, v11, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/LocationActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 596
    sget v3, Lorg/telegram/messenger/R$drawable;->filled_directions:I

    sget v4, Lorg/telegram/messenger/R$string;->GetDirections:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v15, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    goto/16 :goto_3

    .line 598
    :cond_7
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 599
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->SharedPlace:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 601
    :cond_8
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/messenger/R$string;->ChatLocation:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 603
    :goto_2
    iget v0, v1, Lorg/telegram/ui/LocationActivity;->locationType:I

    if-eq v0, v9, :cond_b

    .line 604
    sget v0, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-virtual {v14, v11, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/LocationActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 605
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_openin:I

    sget v4, Lorg/telegram/messenger/R$string;->OpenInExternalApp:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v12, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 606
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    iget-wide v3, v1, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/LocationController;->isSharingLocation(J)Z

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, v1, Lorg/telegram/ui/LocationActivity;->isSharingAllowed:Z

    if-eqz v0, :cond_9

    .line 607
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_location:I

    sget v4, Lorg/telegram/messenger/R$string;->SendLiveLocationMenu:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v0, v5, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 609
    :cond_9
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 613
    :cond_a
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->ShareLocation:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 615
    iget v0, v1, Lorg/telegram/ui/LocationActivity;->locationType:I

    if-eq v0, v8, :cond_b

    .line 616
    new-instance v0, Lorg/telegram/ui/LocationActivity$MapOverlayView;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/LocationActivity$MapOverlayView;-><init>(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    .line 618
    sget v0, Lorg/telegram/messenger/R$drawable;->outline_header_search:I

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-virtual {v14, v11, v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    new-instance v4, Lorg/telegram/ui/LocationActivity$2;

    invoke-direct {v4, v1}, Lorg/telegram/ui/LocationActivity$2;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/LocationActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 674
    sget v4, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 675
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 676
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    .line 677
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 678
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 679
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelHint:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 683
    :cond_b
    :goto_3
    new-instance v0, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/LocationActivity$NestedFrameLayout;-><init>(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 684
    move-object v10, v0

    check-cast v10, Landroid/widget/FrameLayout;

    .line 685
    invoke-virtual {v1, v13}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 687
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/LocationActivity;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 688
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v13}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 689
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 690
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 693
    iget v3, v1, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/high16 v16, 0x40c00000    # 6.0f

    const/4 v4, -0x1

    if-eqz v3, :cond_d

    if-ne v3, v12, :cond_c

    goto :goto_4

    .line 696
    :cond_c
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget v7, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    invoke-direct {v3, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_5

    .line 694
    :cond_d
    :goto_4
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v6, 0x41a80000    # 21.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget v7, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    invoke-direct {v3, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_5
    const/16 v6, 0x53

    .line 698
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 700
    new-instance v6, Lorg/telegram/ui/LocationActivity$3;

    invoke-direct {v6, v1, v2}, Lorg/telegram/ui/LocationActivity$3;-><init>(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;)V

    iput-object v6, v1, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    .line 709
    new-instance v7, Lorg/telegram/ui/Components/MapPlaceholderDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/LocationActivity;->isActiveThemeDark()Z

    move-result v4

    invoke-direct {v7, v4}, Lorg/telegram/ui/Components/MapPlaceholderDrawable;-><init>(Z)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 711
    iget-object v4, v1, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v6, 0x0

    const/16 v7, 0x11

    const/high16 v18, 0x40000000    # 2.0f

    const/high16 v19, 0x42200000    # 40.0f

    if-nez v4, :cond_e

    iget v15, v1, Lorg/telegram/ui/LocationActivity;->locationType:I

    if-eqz v15, :cond_f

    if-eq v15, v12, :cond_f

    :cond_e
    if-eqz v4, :cond_11

    iget v4, v1, Lorg/telegram/ui/LocationActivity;->locationType:I

    if-ne v4, v9, :cond_11

    .line 712
    :cond_f
    new-instance v4, Lorg/telegram/ui/LocationActivity$SearchButton;

    invoke-direct {v4, v2}, Lorg/telegram/ui/LocationActivity$SearchButton;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    const/high16 v15, 0x42a00000    # 80.0f

    .line 713
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    neg-int v15, v15

    int-to-float v15, v15

    invoke-virtual {v4, v15}, Lorg/telegram/ui/LocationActivity$SearchButton;->setTranslationX(F)V

    .line 714
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_location_actionBackground:I

    invoke-virtual {v1, v15}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v15

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_location_actionPressedBackground:I

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v8

    invoke-static {v4, v15, v8}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 715
    iget-object v8, v1, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    invoke-static {v8}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 716
    iget-object v8, v1, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v8, v15}, Landroid/view/View;->setTranslationZ(F)V

    .line 717
    iget-object v8, v1, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    sget-object v15, Lorg/telegram/messenger/utils/ViewOutlineProviderImpl;->BOUNDS_ROUND_RECT:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v8, v15}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 718
    iget-object v8, v1, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    invoke-virtual {v8, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 719
    iget-object v4, v1, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_location_actionActiveIcon:I

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 720
    iget-object v4, v1, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {v4, v12, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 721
    iget-object v4, v1, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 722
    iget-object v4, v1, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 723
    iget-object v4, v1, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v4, v15, v11, v8, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 724
    iget-object v4, v1, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v8, v1, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    const/high16 v26, 0x42a00000    # 80.0f

    const/16 v27, 0x0

    const/16 v21, -0x2

    const/high16 v22, 0x42200000    # 40.0f

    const/16 v23, 0x31

    const/high16 v24, 0x42a00000    # 80.0f

    const/high16 v25, 0x41400000    # 12.0f

    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v4, v8, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 725
    iget v4, v1, Lorg/telegram/ui/LocationActivity;->locationType:I

    if-ne v4, v9, :cond_10

    .line 726
    iget-object v4, v1, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    sget v8, Lorg/telegram/messenger/R$string;->OpenInMaps:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    iget-object v4, v1, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    new-instance v8, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda1;

    invoke-direct {v8, v1}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 736
    iget-object v4, v1, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/LocationActivity$SearchButton;->setTranslationX(F)V

    goto :goto_6

    .line 738
    :cond_10
    iget-object v4, v1, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    sget v8, Lorg/telegram/messenger/R$string;->PlacesInThisArea:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    iget-object v4, v1, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    new-instance v8, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda9;

    invoke-direct {v8, v1}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 748
    :cond_11
    :goto_6
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_location_actionIcon:I

    move v4, v6

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v6

    move v15, v7

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    move/from16 v21, v4

    const/4 v4, 0x0

    move-object/from16 v22, v5

    const/4 v5, 0x0

    move-object/from16 v17, v14

    move/from16 v11, v21

    move-object/from16 v15, v22

    move-object v14, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object/from16 v43, v3

    move-object v3, v2

    move-object/from16 v2, v43

    iput-object v3, v1, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 749
    invoke-virtual {v3, v12}, Landroid/view/View;->setClickable(Z)V

    .line 750
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 751
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v22, 0x41200000    # 10.0f

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalXOffset(I)V

    .line 752
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 753
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_map:I

    sget v6, Lorg/telegram/messenger/R$string;->Map:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 754
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_satellite:I

    sget v6, Lorg/telegram/messenger/R$string;->Satellite:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    invoke-virtual {v3, v9, v5, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 755
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_hybrid:I

    sget v6, Lorg/telegram/messenger/R$string;->Hybrid:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    const/4 v9, 0x4

    invoke-virtual {v3, v9, v5, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 756
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v5, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 757
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_location_actionBackground:I

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v6

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_location_actionPressedBackground:I

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v9

    invoke-static {v3, v6, v9}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 758
    iget-object v6, v1, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v6}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 759
    iget-object v6, v1, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationZ(F)V

    .line 760
    iget-object v6, v1, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget-object v9, Lorg/telegram/messenger/utils/ViewOutlineProviderImpl;->BOUNDS_OVAL:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v6, v9}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 761
    iget-object v6, v1, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v6, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 762
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_map_type:I

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 763
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v6, v1, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v35, 0x41400000    # 12.0f

    const/16 v36, 0x0

    const/16 v30, 0x28

    const/high16 v31, 0x42200000    # 40.0f

    const/16 v32, 0x35

    const/16 v33, 0x0

    const/high16 v34, 0x41400000    # 12.0f

    invoke-static/range {v30 .. v36}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 764
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v4, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda10;

    invoke-direct {v4, v1}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 765
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v4, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda11;

    invoke-direct {v4, v1}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 777
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/messenger/IMapsProvider;->supportsOtherMapTypes()Z

    move-result v3

    const/16 v4, 0x8

    if-nez v3, :cond_12

    .line 778
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 781
    :cond_12
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    .line 782
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v12

    invoke-static {v3, v6, v12}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 783
    iget-object v6, v1, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 784
    iget-object v6, v1, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v6, v12}, Landroid/view/View;->setTranslationZ(F)V

    .line 785
    iget-object v6, v1, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 786
    iget-object v6, v1, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 787
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_current_location:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 788
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 789
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_location_actionActiveIcon:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v11

    invoke-direct {v12, v11, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 790
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 791
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$string;->AccDescrMyLocation:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/high16 v35, 0x41400000    # 12.0f

    const/high16 v36, 0x41400000    # 12.0f

    const/16 v30, 0x28

    const/high16 v31, 0x42200000    # 40.0f

    const/16 v32, 0x55

    const/16 v33, 0x0

    const/16 v34, 0x0

    .line 792
    invoke-static/range {v30 .. v36}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    .line 793
    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v11, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v12, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    add-int/2addr v4, v11

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 794
    iget-object v4, v1, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v11, v1, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v11, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 795
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda12;

    invoke-direct {v4, v1}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 832
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    .line 833
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 834
    iget-object v4, v1, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 835
    iget-object v4, v1, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationZ(F)V

    .line 836
    iget-object v4, v1, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 837
    iget-object v4, v1, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-direct {v5, v7, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 838
    iget-object v4, v1, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 839
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 840
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/messenger/R$string;->AccDescrLocationNotify:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 841
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v4, v1, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig;->canUseYandexMaps()Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v5, 0x0

    goto :goto_7

    :cond_13
    const/16 v5, 0x32

    :goto_7
    add-int/lit8 v5, v5, 0xc

    int-to-float v5, v5

    const/high16 v35, 0x41400000    # 12.0f

    const/16 v36, 0x0

    const/16 v30, 0x28

    const/high16 v31, 0x42200000    # 40.0f

    const/16 v32, 0x35

    const/16 v33, 0x0

    move/from16 v34, v5

    invoke-static/range {v30 .. v36}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 842
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda13;

    invoke-direct {v4, v1}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 876
    iget-wide v3, v1, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_14

    .line 877
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v5, v1, Lorg/telegram/ui/LocationActivity;->dialogId:J

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    move-object v11, v3

    goto :goto_8

    :cond_14
    move-object v11, v4

    .line 879
    :goto_8
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/MessageObject;->isExpiredLiveLocation(I)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-static {v11}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-boolean v3, v11, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v3, :cond_16

    :cond_15
    const/4 v9, 0x4

    const/4 v12, 0x0

    goto :goto_a

    .line 883
    :cond_16
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v3

    iget-wide v5, v1, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-virtual {v3, v5, v6}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 884
    iget v3, v3, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->proximityMeters:I

    if-lez v3, :cond_17

    .line 885
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_location_alert2:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v9, 0x4

    const/4 v12, 0x0

    goto :goto_b

    .line 887
    :cond_17
    iget-wide v5, v1, Lorg/telegram/ui/LocationActivity;->dialogId:J

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v5

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-nez v3, :cond_18

    .line 888
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 889
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/view/View;->setAlpha(F)V

    .line 890
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleX(F)V

    .line 891
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setScaleY(F)V

    goto :goto_9

    :cond_18
    const/4 v9, 0x4

    const/4 v12, 0x0

    .line 893
    :goto_9
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_location_alert:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 880
    :goto_a
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 881
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_location_alert:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 897
    :goto_b
    new-instance v3, Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v5, 0x1

    invoke-direct {v3, v2, v5}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    iput-object v3, v1, Lorg/telegram/ui/LocationActivity;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v5, 0x2

    .line 898
    invoke-virtual {v3, v5, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 899
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    const-wide/16 v6, 0xfa0

    invoke-virtual {v3, v6, v7}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 900
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, -0x3e380000    # -25.0f

    invoke-virtual {v3, v4, v6}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 901
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 902
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v4, v1, Lorg/telegram/ui/LocationActivity;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/high16 v35, 0x41000000    # 8.0f

    const/16 v36, 0x0

    const/16 v30, -0x1

    const/high16 v31, -0x40000000    # -2.0f

    const/16 v32, 0x33

    const/high16 v33, 0x41000000    # 8.0f

    const/high16 v34, 0x42d40000    # 106.0f

    invoke-static/range {v30 .. v36}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 904
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lorg/telegram/ui/LocationActivity;->emptyView:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    .line 905
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 906
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 907
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->emptyView:Landroid/widget/LinearLayout;

    const/high16 v4, 0x43200000    # 160.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 908
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->emptyView:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 909
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->emptyView:Landroid/widget/LinearLayout;

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v6, -0x1

    invoke-static {v6, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 910
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->emptyView:Landroid/widget/LinearLayout;

    new-instance v4, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda14;

    invoke-direct {v4}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 912
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lorg/telegram/ui/LocationActivity;->emptyImageView:Landroid/widget/ImageView;

    .line 913
    sget v4, Lorg/telegram/messenger/R$drawable;->location_empty:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 914
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->emptyImageView:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_dialogEmptyImage:I

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-direct {v4, v7, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 915
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->emptyView:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lorg/telegram/ui/LocationActivity;->emptyImageView:Landroid/widget/ImageView;

    const/4 v7, -0x2

    invoke-static {v7, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 917
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lorg/telegram/ui/LocationActivity;->emptyTitleTextView:Landroid/widget/TextView;

    .line 918
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogEmptyText:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 919
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->emptyTitleTextView:Landroid/widget/TextView;

    const/16 v15, 0x11

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 920
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->emptyTitleTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 921
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->emptyTitleTextView:Landroid/widget/TextView;

    const/high16 v7, 0x41880000    # 17.0f

    const/4 v8, 0x1

    invoke-virtual {v3, v8, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 922
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->emptyTitleTextView:Landroid/widget/TextView;

    sget v7, Lorg/telegram/messenger/R$string;->NoPlacesFound:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 923
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->emptyView:Landroid/widget/LinearLayout;

    iget-object v7, v1, Lorg/telegram/ui/LocationActivity;->emptyTitleTextView:Landroid/widget/TextView;

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v26, -0x2

    const/16 v27, -0x2

    const/16 v28, 0x11

    const/16 v29, 0x0

    const/16 v30, 0xb

    invoke-static/range {v26 .. v32}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 925
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lorg/telegram/ui/LocationActivity;->emptySubtitleTextView:Landroid/widget/TextView;

    .line 926
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 927
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->emptySubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 928
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->emptySubtitleTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41700000    # 15.0f

    const/4 v8, 0x1

    invoke-virtual {v3, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 929
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->emptySubtitleTextView:Landroid/widget/TextView;

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 930
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->emptyView:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lorg/telegram/ui/LocationActivity;->emptySubtitleTextView:Landroid/widget/TextView;

    const/16 v30, 0x6

    invoke-static/range {v26 .. v32}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 932
    new-instance v15, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v15, v2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v15, v1, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object v3, v0

    .line 933
    new-instance v0, Lorg/telegram/ui/LocationActivity$4;

    move-object v4, v3

    iget v3, v1, Lorg/telegram/ui/LocationActivity;->locationType:I

    move-object v7, v4

    move/from16 v23, v5

    iget-wide v4, v1, Lorg/telegram/ui/LocationActivity;->dialogId:J

    move-object v8, v7

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    move/from16 v20, v9

    iget-boolean v9, v1, Lorg/telegram/ui/LocationActivity;->fromStories:Z

    iget v6, v1, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/16 v12, 0x8

    if-ne v6, v12, :cond_19

    move-object v6, v10

    const/4 v10, 0x1

    goto :goto_c

    :cond_19
    move-object v6, v10

    const/4 v10, 0x0

    :goto_c
    const/16 v18, 0x0

    move-object/from16 v19, v8

    const/4 v8, 0x0

    move-object v12, v6

    move/from16 v6, v18

    move-object/from16 v37, v19

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/LocationActivity$4;-><init>(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;IJZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZZ)V

    iput-object v0, v1, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 962
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-direct {v3, v2, v8, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v3, v1, Lorg/telegram/ui/LocationActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 963
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->searchStoriesArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    if-eqz v0, :cond_1a

    .line 964
    new-instance v0, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/LocationActivity;->sharedMediaHeader:Lorg/telegram/ui/Cells/GraySectionCell;

    .line 965
    new-instance v0, Lorg/telegram/ui/LocationActivity$6;

    new-instance v5, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    invoke-direct {v5, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    move v3, v13

    new-instance v13, Lorg/telegram/ui/LocationActivity$5;

    invoke-direct {v13, v1}, Lorg/telegram/ui/LocationActivity$5;-><init>(Lorg/telegram/ui/LocationActivity;)V

    move-object v4, v14

    const/4 v14, 0x0

    .line 1004
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v15

    move v7, v3

    move-object v9, v4

    const-wide/16 v3, 0x0

    move/from16 v21, v6

    const/4 v6, 0x0

    move v10, v7

    const/4 v7, 0x0

    move/from16 v24, v8

    const/4 v8, 0x0

    move-object/from16 v18, v9

    const/4 v9, 0x0

    move/from16 v19, v10

    const/16 v10, 0x8

    move-object/from16 v20, v11

    const/4 v11, 0x0

    move-object/from16 v23, v12

    move-object/from16 v12, p0

    move-object/from16 v39, v17

    move-object/from16 v41, v18

    move/from16 v38, v19

    move-object/from16 v42, v20

    move-object/from16 v40, v23

    invoke-direct/range {v0 .. v15}, Lorg/telegram/ui/LocationActivity$6;-><init>(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$UserFull;IILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/LocationActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    move/from16 v3, v38

    .line 1025
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1026
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->sharedMediaHeader:Lorg/telegram/ui/Cells/GraySectionCell;

    const/16 v4, 0x20

    const/16 v5, 0x37

    const/4 v6, -0x1

    invoke-static {v6, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1027
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->sharedMediaLayout:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setSharedMediaLayout(Lorg/telegram/ui/Components/SharedMediaLayout;)V

    .line 1028
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/view/View;->setOverScrollMode(I)V

    .line 1030
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const/4 v8, 0x0

    .line 1031
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 1032
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 1033
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x15e

    .line 1034
    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 1035
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_d

    :cond_1a
    move/from16 v24, v8

    move-object/from16 v42, v11

    move-object/from16 v40, v12

    move-object/from16 v41, v14

    move-object/from16 v39, v17

    const/4 v7, 0x2

    move v8, v6

    const/4 v6, -0x1

    .line 1037
    :goto_d
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-boolean v3, v1, Lorg/telegram/ui/LocationActivity;->locationDenied:Z

    invoke-virtual {v0, v3, v8}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setMyLocationDenied(ZZ)V

    .line 1038
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    new-instance v3, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda15;

    invoke-direct {v3, v1}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setUpdateRunnable(Ljava/lang/Runnable;)V

    .line 1039
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 1040
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v9, 0x33

    invoke-static {v6, v6, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v12, v40

    invoke-virtual {v12, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1041
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1042
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setAddressNameOverride(Ljava/lang/String;)V

    .line 1045
    :cond_1b
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/LocationActivity$7;

    invoke-direct {v3, v1}, Lorg/telegram/ui/LocationActivity$7;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1062
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 1063
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda16;

    invoke-direct {v3, v1, v2}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 1104
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda17;

    invoke-direct {v3, v1}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1198
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget-wide v3, v1, Lorg/telegram/ui/LocationActivity;->dialogId:J

    new-instance v5, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5, v1}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v0, v3, v4, v5}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->setDelegate(JLorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;)V

    .line 1199
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    iget v3, v1, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setOverScrollHeight(I)V

    .line 1201
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    invoke-static {v6, v6, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1203
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/telegram/messenger/IMapsProvider;->onCreateMapView(Landroid/content/Context;)Lorg/telegram/messenger/IMapsProvider$IMapView;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    .line 1204
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1205
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    new-instance v3, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-interface {v0, v3}, Lorg/telegram/messenger/IMapsProvider$IMapView;->setOnDispatchTouchEventInterceptor(Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;)V

    .line 1217
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    new-instance v3, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-interface {v0, v3}, Lorg/telegram/messenger/IMapsProvider$IMapView;->setOnInterceptTouchEventInterceptor(Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;)V

    .line 1255
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    new-instance v3, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-interface {v0, v3}, Lorg/telegram/messenger/IMapsProvider$IMapView;->setOnLayoutListener(Ljava/lang/Runnable;)V

    .line 1261
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    .line 1262
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda6;

    invoke-direct {v4, v1, v0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/LocationActivity;Lorg/telegram/messenger/IMapsProvider$IMapView;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1294
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1296
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_1f

    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-nez v3, :cond_1f

    const/16 v0, 0x31

    const-wide/16 v10, 0x0

    move-object/from16 v3, v42

    if-eqz v3, :cond_1c

    .line 1297
    iget v4, v1, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1c

    iget-wide v4, v1, Lorg/telegram/ui/LocationActivity;->dialogId:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_1c

    .line 1298
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1299
    sget v5, Lorg/telegram/messenger/R$drawable;->livepin:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1300
    iget-object v5, v1, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    const/16 v13, 0x3e

    const/16 v14, 0x4c

    invoke-static {v13, v14, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v5, v4, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1302
    new-instance v5, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v5, v2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/high16 v13, 0x41d00000    # 26.0f

    .line 1303
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v5, v13}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 1304
    new-instance v13, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v13, v3}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    const/high16 v14, 0x41d00000    # 26.0f

    .line 1305
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v13, v14}, Lorg/telegram/ui/Components/AvatarDrawable;->setRoundRadius(I)V

    .line 1306
    invoke-virtual {v5, v3, v13}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v25, 0x34

    const/high16 v26, 0x42500000    # 52.0f

    const/16 v27, 0x33

    const/high16 v28, 0x40a00000    # 5.0f

    const/high16 v29, 0x40a00000    # 5.0f

    .line 1307
    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1309
    iput-object v4, v1, Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/view/View;

    .line 1310
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1313
    :cond_1c
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/view/View;

    if-nez v3, :cond_1d

    .line 1314
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1315
    sget v4, Lorg/telegram/messenger/R$drawable;->map_pin2:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1316
    iget-object v4, v1, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    const/16 v5, 0x1c

    const/16 v13, 0x30

    invoke-static {v5, v13, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1317
    iput-object v3, v1, Lorg/telegram/ui/LocationActivity;->markerImageView:Landroid/view/View;

    .line 1320
    :cond_1d
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v4, 0x8

    .line 1321
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1322
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    move/from16 v13, v24

    invoke-direct {v3, v2, v13, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1323
    new-instance v0, Lorg/telegram/ui/LocationActivity$9;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    iget v5, v1, Lorg/telegram/ui/LocationActivity;->locationType:I

    if-ne v5, v4, :cond_1e

    move v5, v13

    goto :goto_e

    :cond_1e
    move v5, v8

    :goto_e
    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/LocationActivity$9;-><init>(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZ)V

    iput-object v0, v1, Lorg/telegram/ui/LocationActivity;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    .line 1335
    new-instance v3, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v0, v10, v11, v3}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->setDelegate(JLorg/telegram/ui/Adapters/BaseLocationAdapter$BaseLocationAdapterDelegate;)V

    .line 1339
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v6, v6, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1340
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/LocationActivity$10;

    invoke-direct {v3, v1}, Lorg/telegram/ui/LocationActivity$10;-><init>(Lorg/telegram/ui/LocationActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1348
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda8;

    move-object/from16 v4, v39

    invoke-direct {v3, v1, v4}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/LocationActivity;Lorg/telegram/ui/ActionBar/ActionBarMenu;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    goto :goto_f

    :cond_1f
    move/from16 v13, v24

    if-eqz v0, :cond_20

    .line 1372
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_20
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-eqz v0, :cond_23

    .line 1373
    :cond_21
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-eqz v0, :cond_22

    .line 1374
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setChatLocation(Lorg/telegram/tgnet/TLRPC$TL_channelLocation;)V

    goto :goto_f

    .line 1375
    :cond_22
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_23

    .line 1376
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 1379
    :cond_23
    :goto_f
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_24

    iget v3, v1, Lorg/telegram/ui/LocationActivity;->locationType:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_24

    .line 1380
    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    :cond_24
    move v11, v8

    :goto_10
    if-ge v11, v7, :cond_25

    .line 1385
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    new-instance v3, Lorg/telegram/ui/Components/UndoView;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Components/UndoView;-><init>(Landroid/content/Context;)V

    aput-object v3, v0, v11

    .line 1386
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v0, v0, v11

    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UndoView;->setAdditionalTranslationY(F)V

    .line 1387
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v0, v0, v11

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationZ(F)V

    .line 1388
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v3, v1, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v3, v3, v11

    const/high16 v28, 0x41000000    # 8.0f

    const/high16 v29, 0x41000000    # 8.0f

    const/16 v23, -0x1

    const/high16 v24, -0x40000000    # -2.0f

    const/16 v25, 0x53

    const/high16 v26, 0x41000000    # 8.0f

    const/16 v27, 0x0

    invoke-static/range {v23 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    .line 1391
    :cond_25
    new-instance v0, Lorg/telegram/ui/LocationActivity$11;

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/LocationActivity$11;-><init>(Lorg/telegram/ui/LocationActivity;Landroid/content/Context;Landroid/graphics/Rect;)V

    iput-object v0, v1, Lorg/telegram/ui/LocationActivity;->shadow:Landroid/view/View;

    .line 1411
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationZ(F)V

    .line 1412
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v2, v1, Lorg/telegram/ui/LocationActivity;->shadow:Landroid/view/View;

    move-object/from16 v14, v41

    invoke-virtual {v0, v2, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1414
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_26

    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-nez v0, :cond_26

    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->initialLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    if-eqz v0, :cond_26

    .line 1415
    iput-boolean v13, v1, Lorg/telegram/ui/LocationActivity;->userLocationMoved:Z

    .line 1416
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_location_actionIcon:I

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1417
    iget-object v0, v1, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1420
    :cond_26
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1421
    invoke-direct {v1}, Lorg/telegram/ui/LocationActivity;->updateEmptyView()V

    .line 1423
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 11

    .line 2626
    sget p2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 2627
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack(Z)V

    return-void

    .line 2628
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    const/4 v1, 0x0

    if-ne p1, p2, :cond_2

    .line 2629
    iput-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->locationDenied:Z

    .line 2630
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz p1, :cond_1

    .line 2631
    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setMyLocationDenied(ZZ)V

    .line 2633
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz p1, :cond_13

    .line 2635
    :try_start_0
    invoke-interface {p1, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMyLocationEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2637
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void

    .line 2640
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->locationPermissionDenied:I

    if-ne p1, p2, :cond_3

    .line 2641
    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->locationDenied:Z

    .line 2642
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz p1, :cond_13

    .line 2643
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setMyLocationDenied(ZZ)V

    return-void

    .line 2645
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    if-ne p1, p2, :cond_4

    .line 2646
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz p1, :cond_13

    .line 2647
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 2649
    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    if-ne p1, p2, :cond_a

    const/4 p1, 0x2

    .line 2650
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    goto/16 :goto_5

    .line 2654
    :cond_5
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 2655
    iget-wide v2, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    cmp-long p1, p1, v2

    if-nez p1, :cond_13

    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-nez p1, :cond_6

    goto/16 :goto_5

    .line 2658
    :cond_6
    aget-object p1, p3, v0

    check-cast p1, Ljava/util/ArrayList;

    move p2, v1

    .line 2660
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v1, p3, :cond_9

    .line 2661
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/messenger/MessageObject;

    .line 2662
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2663
    iget-object p2, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {p0, p2}, Lorg/telegram/ui/LocationActivity;->addUserMarker(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/ui/LocationActivity$LiveLocation;

    move p2, v0

    goto :goto_1

    .line 2665
    :cond_7
    iget-object v2, p3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionGeoProximityReached;

    if-eqz v2, :cond_8

    .line 2666
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 2667
    iget-object p3, p0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_location_alert:I

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2668
    iget-object p3, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    if-eqz p3, :cond_8

    .line 2669
    invoke-interface {p3}, Lorg/telegram/messenger/IMapsProvider$ICircle;->remove()V

    const/4 p3, 0x0

    .line 2670
    iput-object p3, p0, Lorg/telegram/ui/LocationActivity;->proximityCircle:Lorg/telegram/messenger/IMapsProvider$ICircle;

    :cond_8
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    if-eqz p2, :cond_13

    .line 2675
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz p1, :cond_13

    .line 2676
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->markers:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->setLiveLocations(Ljava/util/ArrayList;)V

    return-void

    .line 2678
    :cond_a
    sget p2, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    if-ne p1, p2, :cond_13

    .line 2679
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 2680
    iget-wide v2, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_13

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_b

    goto/16 :goto_5

    .line 2684
    :cond_b
    aget-object p3, p3, v0

    check-cast p3, Ljava/util/ArrayList;

    move v2, v1

    move v3, v2

    .line 2685
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_12

    .line 2686
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 2687
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v5

    if-nez v5, :cond_c

    goto/16 :goto_4

    .line 2690
    :cond_c
    iget-object v5, p0, Lorg/telegram/ui/LocationActivity;->markersMap:Landroidx/collection/LongSparseArray;

    iget-object v6, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {p0, v6}, Lorg/telegram/ui/LocationActivity;->getMessageId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/LocationActivity$LiveLocation;

    if-eqz v5, :cond_11

    .line 2692
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lorg/telegram/messenger/LocationController;->getSharingLocationInfo(J)Lorg/telegram/messenger/LocationController$SharingLocationInfo;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 2693
    iget v3, v3, Lorg/telegram/messenger/LocationController$SharingLocationInfo;->mid:I

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-eq v3, v6, :cond_10

    .line 2694
    :cond_d
    iget-object v3, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object v3, v5, Lorg/telegram/ui/LocationActivity$LiveLocation;->object:Lorg/telegram/tgnet/TLRPC$Message;

    .line 2695
    new-instance v6, Lorg/telegram/messenger/IMapsProvider$LatLng;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/telegram/messenger/IMapsProvider$LatLng;-><init>(DD)V

    .line 2696
    iget-object v3, v5, Lorg/telegram/ui/LocationActivity$LiveLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {v3, v6}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setPosition(Lorg/telegram/messenger/IMapsProvider$LatLng;)V

    .line 2697
    iget-wide v7, p0, Lorg/telegram/ui/LocationActivity;->selectedMarkerId:J

    iget-wide v9, v5, Lorg/telegram/ui/LocationActivity$LiveLocation;->id:J

    cmp-long v3, v7, v9

    if-nez v3, :cond_e

    .line 2698
    iget-object v3, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getMapsProvider()Lorg/telegram/messenger/IMapsProvider;

    move-result-object v7

    iget-object v8, v5, Lorg/telegram/ui/LocationActivity$LiveLocation;->marker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {v8}, Lorg/telegram/messenger/IMapsProvider$IMarker;->getPosition()Lorg/telegram/messenger/IMapsProvider$LatLng;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/telegram/messenger/IMapsProvider;->newCameraUpdateLatLng(Lorg/telegram/messenger/IMapsProvider$LatLng;)Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/telegram/messenger/IMapsProvider$IMap;->animateCamera(Lorg/telegram/messenger/IMapsProvider$ICameraUpdate;)V

    .line 2700
    :cond_e
    iget-object v3, v5, Lorg/telegram/ui/LocationActivity$LiveLocation;->directionMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    if-eqz v3, :cond_10

    .line 2701
    invoke-interface {v3}, Lorg/telegram/messenger/IMapsProvider$IMarker;->getPosition()Lorg/telegram/messenger/IMapsProvider$LatLng;

    .line 2702
    iget-object v3, v5, Lorg/telegram/ui/LocationActivity$LiveLocation;->directionMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {v3, v6}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setPosition(Lorg/telegram/messenger/IMapsProvider$LatLng;)V

    .line 2703
    iget-object v3, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->heading:I

    if-eqz v3, :cond_f

    .line 2704
    iget-object v4, v5, Lorg/telegram/ui/LocationActivity$LiveLocation;->directionMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {v4, v3}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setRotation(I)V

    .line 2705
    iget-boolean v3, v5, Lorg/telegram/ui/LocationActivity$LiveLocation;->hasRotation:Z

    if-nez v3, :cond_10

    .line 2706
    iget-object v3, v5, Lorg/telegram/ui/LocationActivity$LiveLocation;->directionMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    sget v4, Lorg/telegram/messenger/R$drawable;->map_pin_cone2:I

    invoke-interface {v3, v4}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setIcon(I)V

    .line 2707
    iput-boolean v0, v5, Lorg/telegram/ui/LocationActivity$LiveLocation;->hasRotation:Z

    goto :goto_3

    .line 2710
    :cond_f
    iget-boolean v3, v5, Lorg/telegram/ui/LocationActivity$LiveLocation;->hasRotation:Z

    if-eqz v3, :cond_10

    .line 2711
    iget-object v3, v5, Lorg/telegram/ui/LocationActivity$LiveLocation;->directionMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    invoke-interface {v3, v1}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setRotation(I)V

    .line 2712
    iget-object v3, v5, Lorg/telegram/ui/LocationActivity$LiveLocation;->directionMarker:Lorg/telegram/messenger/IMapsProvider$IMarker;

    sget v4, Lorg/telegram/messenger/R$drawable;->map_pin_circle:I

    invoke-interface {v3, v4}, Lorg/telegram/messenger/IMapsProvider$IMarker;->setIcon(I)V

    .line 2713
    iput-boolean v1, v5, Lorg/telegram/ui/LocationActivity$LiveLocation;->hasRotation:Z

    :cond_10
    :goto_3
    move v3, v0

    :cond_11
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_12
    if-eqz v3, :cond_13

    .line 2721
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz p1, :cond_13

    .line 2722
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2723
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

    if-eqz p1, :cond_13

    .line 2724
    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/ProximitySheet;->updateText(ZZ)V

    :cond_13
    :goto_5
    return-void
.end method

.method protected disablePermissionCheck()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public finishFragment(Z)Z
    .locals 1

    .line 2762
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->onCheckGlScreenshot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2765
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment(Z)Z

    move-result p1

    return p1
.end method

.method public getAddressName()Ljava/lang/String;
    .locals 1

    .line 3043
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/LocationActivityAdapter;->getAddressName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 49

    move-object/from16 v0, p0

    .line 2895
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2897
    new-instance v8, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda20;

    invoke-direct {v8, v0}, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/LocationActivity;)V

    const/4 v10, 0x0

    move v2, v10

    .line 2931
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    array-length v3, v3

    const/4 v11, 0x1

    if-ge v2, v3, :cond_0

    .line 2932
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v13, v3, v2

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v19, v21

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2933
    new-instance v22, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v23, v3, v2

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/UndoView;

    aput-object v4, v3, v10

    const-string v5, "undoImageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v25, v3

    move/from16 v30, v20

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v22

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2934
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v13, v3, v2

    new-array v15, v11, [Ljava/lang/Class;

    aput-object v4, v15, v10

    const-string v3, "undoTextView"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2935
    new-instance v22, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v23, v3, v2

    new-array v3, v11, [Ljava/lang/Class;

    aput-object v4, v3, v10

    const-string v5, "infoTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    move-object/from16 v25, v3

    move/from16 v30, v18

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v22

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2936
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v13, v3, v2

    new-array v15, v11, [Ljava/lang/Class;

    aput-object v4, v15, v10

    const-string v3, "subinfoTextView"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v16

    move/from16 v20, v18

    const/16 v18, 0x0

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move/from16 v18, v20

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2937
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v13, v3, v2

    new-array v15, v11, [Ljava/lang/Class;

    aput-object v4, v15, v10

    const-string v3, "textPaint"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move/from16 v18, v20

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2938
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v13, v3, v2

    new-array v15, v11, [Ljava/lang/Class;

    aput-object v4, v15, v10

    const-string v3, "progressPaint"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move/from16 v30, v20

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2939
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v16, v3, v2

    new-array v3, v11, [Ljava/lang/Class;

    aput-object v4, v3, v10

    const-string v5, "leftImageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    const-string v20, "BODY"

    const/16 v17, 0x0

    move-object/from16 v18, v3

    invoke-direct/range {v15 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2940
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v16, v3, v2

    new-array v3, v11, [Ljava/lang/Class;

    aput-object v4, v3, v10

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v19

    const-string v20, "Wibe Big"

    move-object/from16 v18, v3

    invoke-direct/range {v15 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2941
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v13, v3, v2

    new-array v15, v11, [Ljava/lang/Class;

    aput-object v4, v15, v10

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v16

    const-string v17, "Wibe Big 3"

    move/from16 v18, v30

    invoke-direct/range {v12 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2942
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v13, v3, v2

    new-array v15, v11, [Ljava/lang/Class;

    aput-object v4, v15, v10

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v16

    const-string v17, "Wibe Small"

    invoke-direct/range {v12 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2943
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v13, v3, v2

    new-array v15, v11, [Ljava/lang/Class;

    aput-object v4, v15, v10

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v16

    const-string v17, "Body Main.**"

    invoke-direct/range {v12 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2944
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v13, v3, v2

    new-array v15, v11, [Ljava/lang/Class;

    aput-object v4, v15, v10

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v16

    const-string v17, "Body Top.**"

    invoke-direct/range {v12 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2945
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v13, v3, v2

    new-array v15, v11, [Ljava/lang/Class;

    aput-object v4, v15, v10

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v16

    const-string v17, "Line.**"

    invoke-direct/range {v12 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2946
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v13, v3, v2

    new-array v15, v11, [Ljava/lang/Class;

    aput-object v4, v15, v10

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v16

    const-string v17, "Curve Big.**"

    invoke-direct/range {v12 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2947
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v13, v3, v2

    new-array v15, v11, [Ljava/lang/Class;

    aput-object v4, v15, v10

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v16

    const-string v17, "Curve Small.**"

    invoke-direct/range {v12 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2950
    :cond_0
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v9, v19

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2952
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2953
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2954
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    const/16 v19, 0x0

    move/from16 v20, v23

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2955
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2956
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/16 v18, 0x0

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2957
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    const/16 v19, 0x0

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2958
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    const/16 v18, 0x0

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelHint:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2959
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    :goto_1
    move-object/from16 v17, v2

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :goto_2
    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2960
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    const/4 v7, 0x0

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2961
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2962
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int/2addr v4, v5

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2964
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/16 v18, 0x0

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2966
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v2, v11, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v2, v10

    sget-object v17, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v15, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2968
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/LocationActivity;->emptyImageView:Landroid/widget/ImageView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_dialogEmptyImage:I

    const/16 v17, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2969
    new-instance v22, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->emptyTitleTextView:Landroid/widget/TextView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_dialogEmptyText:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v23, v2

    move/from16 v29, v19

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v22

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2970
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/LocationActivity;->emptySubtitleTextView:Landroid/widget/TextView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2971
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/LocationActivity;->shadow:Landroid/view/View;

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    const/4 v15, 0x0

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2973
    new-instance v30, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v32, v3, v4

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_location_actionIcon:I

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v31, v2

    move/from16 v37, v9

    invoke-direct/range {v30 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2974
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v14, v2, v3

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_location_actionActiveIcon:I

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2975
    new-instance v30, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    sget v32, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v40, Lorg/telegram/ui/ActionBar/Theme;->key_location_actionBackground:I

    move-object/from16 v31, v2

    move/from16 v37, v40

    invoke-direct/range {v30 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2976
    new-instance v30, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->locationButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v32, v3, v4

    sget v48, Lorg/telegram/ui/ActionBar/Theme;->key_location_actionPressedBackground:I

    move-object/from16 v31, v2

    move/from16 v37, v48

    invoke-direct/range {v30 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2978
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2979
    new-instance v33, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v35, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v37, 0x0

    move-object/from16 v34, v2

    invoke-direct/range {v33 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v33

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2980
    new-instance v41, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->mapTypeButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v43, v3, v4

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v42, v2

    invoke-direct/range {v41 .. v48}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v41

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2982
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2983
    new-instance v33, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    sget v35, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    move-object/from16 v34, v2

    invoke-direct/range {v33 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v33

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2984
    new-instance v41, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->proximityButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v43, v3, v4

    move-object/from16 v42, v2

    invoke-direct/range {v41 .. v48}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v41

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2986
    new-instance v30, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    sget v32, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v35, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v31, v2

    move/from16 v37, v19

    invoke-direct/range {v30 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2987
    new-instance v33, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    sget v35, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/16 v37, 0x0

    move-object/from16 v34, v2

    invoke-direct/range {v33 .. v40}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v33

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2988
    new-instance v41, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->searchAreaButton:Lorg/telegram/ui/LocationActivity$SearchButton;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v43, v3, v4

    move-object/from16 v42, v2

    invoke-direct/range {v41 .. v48}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v41

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2990
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2991
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v7, 0x0

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundRed:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2992
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundOrange:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2993
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundViolet:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2994
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGreen:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2995
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundCyan:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2996
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2997
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2999
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_location_liveLocationProgress:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3000
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_location_placeLocationBackground:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3001
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_dialog_liveLocationProgress:I

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3003
    new-instance v30, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v32, v3, v4

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/SendLocationCell;

    aput-object v4, v3, v10

    const-string v5, "imageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v34

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLocationIcon:I

    const/16 v35, 0x0

    move-object/from16 v31, v2

    move-object/from16 v33, v3

    invoke-direct/range {v30 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3004
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v14, v2, v3

    new-array v15, v11, [Ljava/lang/Class;

    aput-object v4, v15, v10

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLiveLocationIcon:I

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3005
    new-instance v30, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    or-int/2addr v3, v6

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v32, v3, v6

    new-array v3, v11, [Ljava/lang/Class;

    aput-object v4, v3, v10

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v34

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLocationBackground:I

    move-object/from16 v31, v2

    move-object/from16 v33, v3

    invoke-direct/range {v30 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3006
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    or-int/2addr v2, v3

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v14, v2, v3

    new-array v15, v11, [Ljava/lang/Class;

    aput-object v4, v15, v10

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v16

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLiveLocationBackground:I

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3007
    new-instance v30, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v11, [Ljava/lang/Class;

    aput-object v4, v3, v10

    const-string v6, "accurateTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v34

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    const/16 v32, 0x0

    move-object/from16 v31, v2

    move-object/from16 v33, v3

    move/from16 v38, v20

    invoke-direct/range {v30 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3008
    new-instance v30, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v32, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v3, v11, [Ljava/lang/Class;

    aput-object v4, v3, v10

    const-string v6, "titleTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v34

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLiveLocationText:I

    move-object/from16 v31, v2

    move-object/from16 v33, v3

    invoke-direct/range {v30 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3009
    new-instance v30, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v32, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v3, v11, [Ljava/lang/Class;

    aput-object v4, v3, v10

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v34

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_location_sendLocationText:I

    move-object/from16 v31, v2

    move-object/from16 v33, v3

    invoke-direct/range {v30 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3011
    new-instance v30, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/LocationDirectionCell;

    aput-object v4, v3, v10

    const-string v6, "buttonTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v34

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    const/16 v32, 0x0

    move-object/from16 v31, v2

    move-object/from16 v33, v3

    invoke-direct/range {v30 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3012
    new-instance v30, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v32, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    new-array v3, v11, [Ljava/lang/Class;

    aput-object v4, v3, v10

    const-string v6, "frameLayout"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v34

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    move-object/from16 v31, v2

    move-object/from16 v33, v3

    invoke-direct/range {v30 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3013
    new-instance v30, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v32, v3, v7

    new-array v3, v11, [Ljava/lang/Class;

    aput-object v4, v3, v10

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v34

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    move-object/from16 v31, v2

    move-object/from16 v33, v3

    invoke-direct/range {v30 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3015
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v15, v11, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v2, v15, v10

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3016
    new-instance v30, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    or-int v32, v4, v6

    new-array v4, v11, [Ljava/lang/Class;

    aput-object v2, v4, v10

    sget v37, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v34, 0x0

    move-object/from16 v31, v3

    move-object/from16 v33, v4

    invoke-direct/range {v30 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3018
    new-instance v30, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v4, v3, v10

    const-string v4, "textView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v34

    const/16 v37, 0x0

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    const/16 v32, 0x0

    move-object/from16 v31, v2

    move-object/from16 v33, v3

    invoke-direct/range {v30 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3020
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v15, v11, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/LocationCell;

    aput-object v2, v15, v10

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3021
    new-instance v30, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v11, [Ljava/lang/Class;

    aput-object v2, v6, v10

    const-string v7, "nameTextView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v34

    sget v43, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object/from16 v31, v3

    move-object/from16 v33, v6

    move/from16 v38, v43

    invoke-direct/range {v30 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v30

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3022
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v15, v11, [Ljava/lang/Class;

    aput-object v2, v15, v10

    const-string v3, "addressTextView"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v16

    const/4 v14, 0x0

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3024
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v15, v11, [Ljava/lang/Class;

    aput-object v2, v15, v10

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3025
    new-instance v35, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v8, v11, [Ljava/lang/Class;

    aput-object v2, v8, v10

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v39

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v37, 0x0

    const/16 v40, 0x0

    move-object/from16 v36, v6

    move-object/from16 v38, v8

    invoke-direct/range {v35 .. v43}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v6, v35

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3026
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/LocationActivity;->searchListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v15, v11, [Ljava/lang/Class;

    aput-object v2, v15, v10

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v16

    const/4 v14, 0x0

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3028
    new-instance v35, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SharingLiveLocationCell;

    aput-object v6, v3, v10

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v39

    move-object/from16 v36, v2

    move-object/from16 v38, v3

    invoke-direct/range {v35 .. v43}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v35

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3029
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v15, v11, [Ljava/lang/Class;

    aput-object v6, v15, v10

    const-string v2, "distanceTextView"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3031
    new-instance v30, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/LocationLoadingCell;

    aput-object v6, v3, v10

    const-string v7, "progressBar"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v34

    const/16 v37, 0x0

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_progressCircle:I

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v31, v2

    move-object/from16 v33, v3

    invoke-direct/range {v30 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3032
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v15, v11, [Ljava/lang/Class;

    aput-object v6, v15, v10

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3033
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v15, v11, [Ljava/lang/Class;

    aput-object v6, v15, v10

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3035
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v15, v11, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/LocationPoweredCell;

    aput-object v2, v15, v10

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3036
    new-instance v17, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v4, v11, [Ljava/lang/Class;

    aput-object v2, v4, v10

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move/from16 v25, v21

    move-object/from16 v21, v5

    invoke-direct/range {v17 .. v25}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v17

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3037
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/LocationActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v15, v11, [Ljava/lang/Class;

    aput-object v2, v15, v10

    const-string v2, "textView2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v17, 0x0

    move/from16 v20, v29

    invoke-direct/range {v12 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public isLightStatusBar()Z
    .locals 4

    .line 3048
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBackPressed(Z)Z
    .locals 2

    .line 2748
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->proximitySheet:Lorg/telegram/ui/Components/ProximitySheet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2749
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProximitySheet;->dismiss()V

    :cond_0
    return v1

    .line 2752
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getGlSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->hasScreenshot:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 2753
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->onCheckGlScreenshot()Z

    :cond_2
    return v1

    .line 2757
    :cond_3
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed(Z)Z

    move-result p1

    return p1
.end method

.method public onBecomeFullyHidden()V
    .locals 3

    .line 2817
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 2818
    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 459
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 460
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 461
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 462
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->locationPermissionDenied:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 463
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 466
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 3

    .line 473
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 474
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->locationPermissionGranted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 475
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->locationPermissionDenied:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 476
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->liveLocationsChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 477
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 478
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 479
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x0

    .line 481
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz v1, :cond_0

    .line 482
    invoke-interface {v1, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMyLocationEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 485
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 488
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    if-eqz v1, :cond_1

    .line 489
    invoke-interface {v1}, Lorg/telegram/messenger/IMapsProvider$IMapView;->onDestroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 492
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 494
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 495
    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    .line 497
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->adapter:Lorg/telegram/ui/Adapters/LocationActivityAdapter;

    if-eqz v0, :cond_3

    .line 498
    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->destroy()V

    .line 500
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->searchAdapter:Lorg/telegram/ui/Adapters/LocationActivitySearchAdapter;

    if-eqz v0, :cond_4

    .line 501
    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/BaseLocationAdapter;->destroy()V

    .line 503
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->updateRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 504
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 505
    iput-object v1, p0, Lorg/telegram/ui/LocationActivity;->updateRunnable:Ljava/lang/Runnable;

    .line 507
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->markAsReadRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 508
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 509
    iput-object v1, p0, Lorg/telegram/ui/LocationActivity;->markAsReadRunnable:Ljava/lang/Runnable;

    :cond_6
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .line 2873
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onLowMemory()V

    .line 2874
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->mapsInitialized:Z

    if-eqz v1, :cond_0

    .line 2875
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->onLowMemory()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 2732
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 2733
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->mapsInitialized:Z

    if-eqz v1, :cond_0

    .line 2735
    :try_start_0
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2737
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2740
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->undoView:[Lorg/telegram/ui/Components/UndoView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 2741
    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    .line 2743
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->onResumeCalled:Z

    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x1e

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 2867
    iget p2, p0, Lorg/telegram/ui/LocationActivity;->askWithRadius:I

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LocationActivity;->openShareLiveLocation(ZI)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 2824
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 2825
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 2826
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    .line 2827
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->mapsInitialized:Z

    if-eqz v1, :cond_0

    .line 2829
    :try_start_0
    invoke-interface {v0}, Lorg/telegram/messenger/IMapsProvider$IMapView;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2831
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 2834
    iput-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->onResumeCalled:Z

    .line 2835
    iget-object v1, p0, Lorg/telegram/ui/LocationActivity;->map:Lorg/telegram/messenger/IMapsProvider$IMap;

    if-eqz v1, :cond_1

    .line 2837
    :try_start_1
    invoke-interface {v1, v0}, Lorg/telegram/messenger/IMapsProvider$IMap;->setMyLocationEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 2839
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2842
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/LocationActivity;->fixLayoutInternal(Z)V

    .line 2843
    invoke-virtual {p0}, Lorg/telegram/ui/LocationActivity;->disablePermissionCheck()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2844
    iput-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->checkPermission:Z

    goto :goto_2

    .line 2845
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/LocationActivity;->checkPermission:Z

    if-eqz v0, :cond_3

    .line 2846
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2848
    iput-boolean v1, p0, Lorg/telegram/ui/LocationActivity;->checkPermission:Z

    .line 2849
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 2850
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 2854
    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->markAsReadRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 2855
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2856
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity;->markAsReadRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_4
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 6

    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    .line 2131
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {p1}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 2132
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {p1}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 2133
    iget-object p2, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {p2}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2138
    :catch_0
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    const/16 p2, 0x33

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p1, :cond_3

    .line 2139
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v2}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v3, v5

    invoke-static {v1, v3, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2140
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    if-eqz p1, :cond_2

    .line 2142
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 2143
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 2144
    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2149
    :catch_1
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LocationActivity;->mapViewClip:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->overlayView:Lorg/telegram/ui/LocationActivity$MapOverlayView;

    iget v3, p0, Lorg/telegram/ui/LocationActivity;->overScrollHeight:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1, v3, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p1, v2, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2151
    :cond_2
    invoke-direct {p0, v0}, Lorg/telegram/ui/LocationActivity;->updateClipView(Z)V

    .line 2152
    invoke-direct {p0}, Lorg/telegram/ui/LocationActivity;->maybeShowProximityHint()V

    goto :goto_0

    .line 2153
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 2154
    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity;->mapView:Lorg/telegram/messenger/IMapsProvider$IMapView;

    invoke-interface {v2}, Lorg/telegram/messenger/IMapsProvider$IMapView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v1, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, v2, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public searchStories(Lorg/telegram/tgnet/tl/TL_stories$MediaArea;)Lorg/telegram/ui/LocationActivity;
    .locals 0

    .line 448
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->searchStoriesArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    return-object p0
.end method

.method public setChatLocation(JLorg/telegram/tgnet/TLRPC$TL_channelLocation;)V
    .locals 0

    neg-long p1, p1

    .line 2402
    iput-wide p1, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    .line 2403
    iput-object p3, p0, Lorg/telegram/ui/LocationActivity;->chatLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;)V
    .locals 0

    .line 2880
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->delegate:Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;

    return-void
.end method

.method public setDialogId(J)V
    .locals 0

    .line 2407
    iput-wide p1, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    return-void
.end method

.method public setInitialLocation(Lorg/telegram/tgnet/TLRPC$TL_channelLocation;)V
    .locals 0

    .line 2411
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->initialLocation:Lorg/telegram/tgnet/TLRPC$TL_channelLocation;

    return-void
.end method

.method public setInitialMaxZoom(Z)V
    .locals 0

    .line 454
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->initialMaxZoom:Z

    return-void
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 2

    .line 2397
    iput-object p1, p0, Lorg/telegram/ui/LocationActivity;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 2398
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/LocationActivity;->dialogId:J

    return-void
.end method

.method public setSharingAllowed(Z)V
    .locals 0

    .line 527
    iput-boolean p1, p0, Lorg/telegram/ui/LocationActivity;->isSharingAllowed:Z

    return-void
.end method
