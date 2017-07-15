.class public final Lcom/vungle/publisher/abg$a$b$a;
.super Lcom/vungle/publisher/abw;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/abg$a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/abw",
        "<",
        "Lcom/vungle/publisher/abg$a$b;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/sr;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/vungle/publisher/abw;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/vungle/publisher/abg$a$b;
    .locals 4

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    iget-object v1, p0, Lcom/vungle/publisher/abg$a$b$a;->a:Lcom/vungle/publisher/sr;

    invoke-interface {v1}, Lcom/vungle/publisher/sr;->b()Landroid/location/Location;

    move-result-object v1

    .line 185
    if-nez v1, :cond_0

    .line 186
    const-string v1, "VungleProtocol"

    const-string v2, "detailed location not available"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_0
    return-object v0

    .line 189
    :cond_0
    new-instance v0, Lcom/vungle/publisher/abg$a$b;

    invoke-direct {v0}, Lcom/vungle/publisher/abg$a$b;-><init>()V

    .line 190
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/publisher/abg$a$b;->a:Ljava/lang/Float;

    .line 191
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/publisher/abg$a$b;->b:Ljava/lang/Double;

    .line 192
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/publisher/abg$a$b;->c:Ljava/lang/Double;

    .line 193
    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/publisher/abg$a$b;->d:Ljava/lang/Float;

    .line 194
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/abg$a$b;->e:Ljava/lang/Long;

    goto :goto_0
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 175
    new-array v0, p1, [Lcom/vungle/publisher/abg$a$b;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lcom/vungle/publisher/abg$a$b;

    invoke-direct {v0}, Lcom/vungle/publisher/abg$a$b;-><init>()V

    return-object v0
.end method
