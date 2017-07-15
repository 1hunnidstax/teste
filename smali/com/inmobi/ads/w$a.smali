.class final Lcom/inmobi/ads/w$a;
.super Ljava/lang/Object;
.source "InterstitialAdUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/inmobi/ads/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/ads/w$a;->a:Ljava/util/Map;

    return-void
.end method

.method static a(ILandroid/app/Activity;JLcom/inmobi/ads/AdUnit$b;)Lcom/inmobi/ads/w;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 56
    sget-object v0, Lcom/inmobi/ads/w$a;->a:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    sget-object v0, Lcom/inmobi/ads/w$a;->a:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/w;

    .line 58
    invoke-virtual {v0, p1}, Lcom/inmobi/ads/w;->a(Landroid/app/Activity;)V

    .line 59
    invoke-virtual {v0, p4}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/AdUnit$b;)V

    .line 60
    if-eqz p4, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/inmobi/ads/w;->r()Ljava/util/Map;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/inmobi/ads/w;->r()Ljava/util/Map;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    :goto_0
    return-object v0

    .line 69
    :cond_1
    new-instance v1, Lcom/inmobi/ads/w;

    const/4 v7, 0x0

    move v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/inmobi/ads/w;-><init>(ILandroid/app/Activity;JLcom/inmobi/ads/AdUnit$b;Lcom/inmobi/ads/w$1;)V

    .line 70
    sget-object v0, Lcom/inmobi/ads/w$a;->a:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 71
    goto :goto_0
.end method

.method static a(ILandroid/content/Context;JLcom/inmobi/ads/AdUnit$b;)Lcom/inmobi/ads/w;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 78
    sget-object v0, Lcom/inmobi/ads/w$a;->a:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    sget-object v0, Lcom/inmobi/ads/w$a;->a:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/w;

    .line 80
    invoke-virtual {v0, p1}, Lcom/inmobi/ads/w;->a(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v0, p4}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/AdUnit$b;)V

    .line 82
    if-eqz p4, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/inmobi/ads/w;->r()Ljava/util/Map;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/inmobi/ads/w;->r()Ljava/util/Map;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 91
    :cond_1
    new-instance v1, Lcom/inmobi/ads/w;

    const/4 v7, 0x0

    move v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/inmobi/ads/w;-><init>(ILandroid/content/Context;JLcom/inmobi/ads/AdUnit$b;Lcom/inmobi/ads/w$1;)V

    .line 92
    sget-object v0, Lcom/inmobi/ads/w$a;->a:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 93
    goto :goto_0
.end method
