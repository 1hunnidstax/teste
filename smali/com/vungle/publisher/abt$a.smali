.class final Lcom/vungle/publisher/abt$a;
.super Lcom/vungle/publisher/abw;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/abt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/abw",
        "<",
        "Lcom/vungle/publisher/abt;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vungle/publisher/abw;-><init>()V

    return-void
.end method

.method protected static a(Ljava/util/Map;)Lcom/vungle/publisher/abt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/vungle/publisher/abt;"
        }
    .end annotation

    .prologue
    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/publisher/ags;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 33
    new-instance v0, Lcom/vungle/publisher/abt;

    invoke-direct {v0}, Lcom/vungle/publisher/abt;-><init>()V

    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/vungle/publisher/abt;->a:Ljava/util/Map;

    .line 36
    :goto_1
    return-object v0

    .line 32
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method protected static b(Ljava/util/Map;)Lcom/vungle/publisher/abt;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/vungle/publisher/cs;",
            ">;)",
            "Lcom/vungle/publisher/abt;"
        }
    .end annotation

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 51
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cs;

    iget-object v0, v0, Lcom/vungle/publisher/cs;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/publisher/ags;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    .line 52
    new-instance v1, Lcom/vungle/publisher/abt;

    invoke-direct {v1}, Lcom/vungle/publisher/abt;-><init>()V

    .line 53
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/vungle/publisher/abt;->a:Ljava/util/Map;

    .line 54
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cs;

    .line 56
    iget-object v4, v0, Lcom/vungle/publisher/cs;->b:Ljava/lang/String;

    .line 57
    iget-object v0, v0, Lcom/vungle/publisher/cs;->c:Ljava/lang/String;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 51
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 60
    :goto_2
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    new-array v0, p1, [Lcom/vungle/publisher/abt;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/vungle/publisher/abt;

    invoke-direct {v0}, Lcom/vungle/publisher/abt;-><init>()V

    return-object v0
.end method
