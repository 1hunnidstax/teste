.class public final Lcom/vungle/publisher/alx;
.super Lcom/vungle/publisher/alz;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vungle/publisher/alz",
        "<TT;TT;>;"
    }
.end annotation


# static fields
.field private static final b:[Ljava/lang/Object;


# instance fields
.field private final c:Lcom/vungle/publisher/ama;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ama",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/vungle/publisher/aio;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/aio",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/vungle/publisher/alx;->b:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/vungle/publisher/ahp$a;Lcom/vungle/publisher/ama;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahp$a",
            "<TT;>;",
            "Lcom/vungle/publisher/ama",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/vungle/publisher/alz;-><init>(Lcom/vungle/publisher/ahp$a;)V

    .line 75
    invoke-static {}, Lcom/vungle/publisher/aio;->a()Lcom/vungle/publisher/aio;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/alx;->d:Lcom/vungle/publisher/aio;

    .line 120
    iput-object p2, p0, Lcom/vungle/publisher/alx;->c:Lcom/vungle/publisher/ama;

    .line 121
    return-void
.end method

.method public static b()Lcom/vungle/publisher/alx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/vungle/publisher/alx",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lcom/vungle/publisher/ama;

    invoke-direct {v0}, Lcom/vungle/publisher/ama;-><init>()V

    new-instance v1, Lcom/vungle/publisher/alx$1;

    invoke-direct {v1, v0}, Lcom/vungle/publisher/alx$1;-><init>(Lcom/vungle/publisher/ama;)V

    iput-object v1, v0, Lcom/vungle/publisher/ama;->d:Lcom/vungle/publisher/aif;

    iget-object v1, v0, Lcom/vungle/publisher/ama;->d:Lcom/vungle/publisher/aif;

    iput-object v1, v0, Lcom/vungle/publisher/ama;->e:Lcom/vungle/publisher/aif;

    new-instance v1, Lcom/vungle/publisher/alx;

    invoke-direct {v1, v0, v0}, Lcom/vungle/publisher/alx;-><init>(Lcom/vungle/publisher/ahp$a;Lcom/vungle/publisher/ama;)V

    return-object v1
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vungle/publisher/alx;->c:Lcom/vungle/publisher/ama;

    iget-object v0, v0, Lcom/vungle/publisher/ama;->a:Ljava/lang/Object;

    .line 126
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/alx;->c:Lcom/vungle/publisher/ama;

    iget-boolean v0, v0, Lcom/vungle/publisher/ama;->b:Z

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    invoke-static {}, Lcom/vungle/publisher/aio;->b()Ljava/lang/Object;

    move-result-object v1

    .line 128
    iget-object v0, p0, Lcom/vungle/publisher/alx;->c:Lcom/vungle/publisher/ama;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ama;->b(Ljava/lang/Object;)[Lcom/vungle/publisher/ama$b;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 129
    invoke-virtual {v4, v1}, Lcom/vungle/publisher/ama$b;->b(Ljava/lang/Object;)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/vungle/publisher/alx;->c:Lcom/vungle/publisher/ama;

    iget-object v0, v0, Lcom/vungle/publisher/ama;->a:Ljava/lang/Object;

    .line 158
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/alx;->c:Lcom/vungle/publisher/ama;

    iget-boolean v0, v0, Lcom/vungle/publisher/ama;->b:Z

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    invoke-static {p1}, Lcom/vungle/publisher/aio;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 160
    iget-object v0, p0, Lcom/vungle/publisher/alx;->c:Lcom/vungle/publisher/ama;

    iput-object v1, v0, Lcom/vungle/publisher/ama;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/vungle/publisher/ama;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ama$a;

    iget-object v2, v0, Lcom/vungle/publisher/ama$a;->b:[Lcom/vungle/publisher/ama$b;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 161
    invoke-virtual {v4, v1}, Lcom/vungle/publisher/ama$b;->b(Ljava/lang/Object;)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 136
    iget-object v0, p0, Lcom/vungle/publisher/alx;->c:Lcom/vungle/publisher/ama;

    iget-object v0, v0, Lcom/vungle/publisher/ama;->a:Ljava/lang/Object;

    .line 137
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/alx;->c:Lcom/vungle/publisher/ama;

    iget-boolean v0, v0, Lcom/vungle/publisher/ama;->b:Z

    if-eqz v0, :cond_3

    .line 138
    :cond_0
    invoke-static {p1}, Lcom/vungle/publisher/aio;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    .line 139
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/vungle/publisher/alx;->c:Lcom/vungle/publisher/ama;

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/ama;->b(Ljava/lang/Object;)[Lcom/vungle/publisher/ama$b;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 142
    :try_start_0
    invoke-virtual {v5, v2}, Lcom/vungle/publisher/ama$b;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :catch_0
    move-exception v5

    .line 144
    if-nez v0, :cond_1

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 151
    :cond_2
    invoke-static {v0}, Lcom/vungle/publisher/ahx;->a(Ljava/util/List;)V

    .line 153
    :cond_3
    return-void
.end method
