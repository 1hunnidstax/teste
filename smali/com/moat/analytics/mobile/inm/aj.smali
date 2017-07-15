.class public Lcom/moat/analytics/mobile/inm/aj;
.super Lcom/moat/analytics/mobile/inm/MoatFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/inm/MoatFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createCustomTracker(Lcom/moat/analytics/mobile/inm/MoatPlugin;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/inm/MoatPlugin",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public createNativeDisplayTracker(Landroid/view/View;Ljava/lang/String;)Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;
    .locals 1

    new-instance v0, Lcom/moat/analytics/mobile/inm/ak;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/inm/ak;-><init>()V

    return-object v0
.end method

.method public createNativeVideoTracker(Ljava/lang/String;)Lcom/moat/analytics/mobile/inm/NativeVideoTracker;
    .locals 1

    new-instance v0, Lcom/moat/analytics/mobile/inm/al;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/inm/al;-><init>()V

    return-object v0
.end method

.method public createWebAdTracker(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/inm/WebAdTracker;
    .locals 1

    new-instance v0, Lcom/moat/analytics/mobile/inm/an;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/inm/an;-><init>()V

    return-object v0
.end method

.method public createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/inm/WebAdTracker;
    .locals 1

    new-instance v0, Lcom/moat/analytics/mobile/inm/an;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/inm/an;-><init>()V

    return-object v0
.end method

.method public createWebDisplayTracker(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/inm/WebAdTracker;
    .locals 1

    new-instance v0, Lcom/moat/analytics/mobile/inm/an;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/inm/an;-><init>()V

    return-object v0
.end method

.method public createWebDisplayTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/inm/WebAdTracker;
    .locals 1

    new-instance v0, Lcom/moat/analytics/mobile/inm/an;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/inm/an;-><init>()V

    return-object v0
.end method
