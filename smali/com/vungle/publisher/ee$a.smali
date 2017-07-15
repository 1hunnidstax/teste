.class public final Lcom/vungle/publisher/ee$a;
.super Lcom/vungle/publisher/dl$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/dl$a",
        "<",
        "Lcom/vungle/publisher/ee;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ee;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/vungle/publisher/dl$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/util/List;)I
    .locals 1

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/vungle/publisher/dl$a;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method protected final synthetic a(Lcom/vungle/publisher/dl;Landroid/database/Cursor;)Lcom/vungle/publisher/dl;
    .locals 2

    .prologue
    .line 105
    check-cast p1, Lcom/vungle/publisher/ee;

    const-string v0, "ad_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/ee;->a:Ljava/lang/String;

    const-string v0, "delivery_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/ee;->b:Ljava/lang/String;

    const-string v0, "event"

    const-class v1, Lcom/vungle/publisher/jl$a;

    invoke-static {p2, v0, v1}, Lcom/vungle/publisher/cb;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ji;

    iput-object v0, p1, Lcom/vungle/publisher/ee;->c:Lcom/vungle/publisher/ji;

    const-string v0, "id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/ee;->t:Ljava/lang/Object;

    const-string v0, "insert_timestamp_millis"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/vungle/publisher/ee;->d:J

    const-string v0, "response_code"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/ee;->e:Ljava/lang/Integer;

    const-string v0, "response_timestamp_millis"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/ee;->f:Ljava/lang/Long;

    const-string v0, "url"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/ee;->g:Ljava/lang/String;

    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/dl$a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 105
    new-array v0, p1, [Lcom/vungle/publisher/ee;

    return-object v0
.end method

.method protected final bridge synthetic b(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    new-array v0, p1, [Ljava/lang/Integer;

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string v0, "event_tracking_http_log"

    return-object v0
.end method

.method public final bridge synthetic c(I)Ljava/util/List;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/vungle/publisher/dl$a;->c(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/vungle/publisher/ee$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ee;

    return-object v0
.end method

.method public final bridge synthetic d()Ljava/util/List;
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/vungle/publisher/dl$a;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
