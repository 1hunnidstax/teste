.class public final Lcom/vungle/publisher/alk;
.super Lcom/vungle/publisher/ahu;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vungle/publisher/ahu",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:Z

.field private final c:Lcom/vungle/publisher/ahu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ahu",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/ahu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahu",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/vungle/publisher/ahu;-><init>(Lcom/vungle/publisher/ahu;)V

    .line 66
    iput-object p1, p0, Lcom/vungle/publisher/alk;->c:Lcom/vungle/publisher/ahu;

    .line 67
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/vungle/publisher/alk;->b:Z

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/alk;->b:Z

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/alk;->c:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0}, Lcom/vungle/publisher/ahu;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :try_start_1
    iget-object v0, p0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    invoke-virtual {v0}, Lcom/vungle/publisher/akd;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    :cond_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-static {v0}, Lcom/vungle/publisher/alp;->a(Ljava/lang/Throwable;)V

    .line 93
    new-instance v1, Lcom/vungle/publisher/aid;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/vungle/publisher/aid;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 80
    :catch_1
    move-exception v0

    .line 83
    :try_start_2
    invoke-static {v0}, Lcom/vungle/publisher/ahx;->b(Ljava/lang/Throwable;)V

    .line 84
    invoke-static {v0}, Lcom/vungle/publisher/alp;->a(Ljava/lang/Throwable;)V

    .line 85
    new-instance v1, Lcom/vungle/publisher/ahz;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/vungle/publisher/ahz;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    :catchall_0
    move-exception v0

    .line 90
    :try_start_3
    iget-object v1, p0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    invoke-virtual {v1}, Lcom/vungle/publisher/akd;->b()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 93
    throw v0

    .line 91
    :catch_2
    move-exception v0

    .line 92
    invoke-static {v0}, Lcom/vungle/publisher/alp;->a(Ljava/lang/Throwable;)V

    .line 93
    new-instance v1, Lcom/vungle/publisher/aid;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/vungle/publisher/aid;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 133
    :try_start_0
    iget-boolean v0, p0, Lcom/vungle/publisher/alk;->b:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/vungle/publisher/alk;->c:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    invoke-static {v0, p0}, Lcom/vungle/publisher/ahx;->a(Ljava/lang/Throwable;Lcom/vungle/publisher/ahq;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 112
    invoke-static {p1}, Lcom/vungle/publisher/ahx;->b(Ljava/lang/Throwable;)V

    .line 113
    iget-boolean v0, p0, Lcom/vungle/publisher/alk;->b:Z

    if-nez v0, :cond_0

    .line 114
    iput-boolean v7, p0, Lcom/vungle/publisher/alk;->b:Z

    .line 115
    invoke-static {p1}, Lcom/vungle/publisher/alp;->a(Ljava/lang/Throwable;)V

    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/alk;->c:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lcom/vungle/publisher/aib; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v0, p0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    invoke-virtual {v0}, Lcom/vungle/publisher/akd;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    .line 117
    :cond_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    invoke-virtual {v1}, Lcom/vungle/publisher/akd;->b()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/vungle/publisher/alp;->a(Ljava/lang/Throwable;)V

    new-instance v1, Lcom/vungle/publisher/aib;

    const-string v2, "Observer.onError not implemented and error while unsubscribing."

    new-instance v3, Lcom/vungle/publisher/ahw;

    new-array v4, v8, [Ljava/lang/Throwable;

    aput-object p1, v4, v6

    aput-object v0, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0, v6}, Lcom/vungle/publisher/ahw;-><init>(Ljava/util/Collection;B)V

    invoke-direct {v1, v2, v3}, Lcom/vungle/publisher/aib;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/vungle/publisher/alp;->a(Ljava/lang/Throwable;)V

    :try_start_3
    iget-object v1, p0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    invoke-virtual {v1}, Lcom/vungle/publisher/akd;->b()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    new-instance v1, Lcom/vungle/publisher/aia;

    const-string v2, "Error occurred when trying to propagate error to Observer.onError"

    new-instance v3, Lcom/vungle/publisher/ahw;

    new-array v4, v8, [Ljava/lang/Throwable;

    aput-object p1, v4, v6

    aput-object v0, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0, v6}, Lcom/vungle/publisher/ahw;-><init>(Ljava/util/Collection;B)V

    invoke-direct {v1, v2, v3}, Lcom/vungle/publisher/aia;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/vungle/publisher/alp;->a(Ljava/lang/Throwable;)V

    new-instance v2, Lcom/vungle/publisher/aia;

    const-string v3, "Error occurred when trying to propagate error to Observer.onError and during unsubscription."

    new-instance v4, Lcom/vungle/publisher/ahw;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object p1, v5, v6

    aput-object v0, v5, v7

    aput-object v1, v5, v8

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0, v6}, Lcom/vungle/publisher/ahw;-><init>(Ljava/util/Collection;B)V

    invoke-direct {v2, v3, v4}, Lcom/vungle/publisher/aia;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/vungle/publisher/alp;->a(Ljava/lang/Throwable;)V

    new-instance v1, Lcom/vungle/publisher/aia;

    invoke-direct {v1, v0}, Lcom/vungle/publisher/aia;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
