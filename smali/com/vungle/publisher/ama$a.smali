.class public final Lcom/vungle/publisher/ama$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final c:[Lcom/vungle/publisher/ama$b;

.field static final d:Lcom/vungle/publisher/ama$a;

.field static final e:Lcom/vungle/publisher/ama$a;


# instance fields
.field final a:Z

.field final b:[Lcom/vungle/publisher/ama$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 153
    new-array v0, v3, [Lcom/vungle/publisher/ama$b;

    sput-object v0, Lcom/vungle/publisher/ama$a;->c:[Lcom/vungle/publisher/ama$b;

    .line 154
    new-instance v0, Lcom/vungle/publisher/ama$a;

    const/4 v1, 0x1

    sget-object v2, Lcom/vungle/publisher/ama$a;->c:[Lcom/vungle/publisher/ama$b;

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/ama$a;-><init>(Z[Lcom/vungle/publisher/ama$b;)V

    sput-object v0, Lcom/vungle/publisher/ama$a;->d:Lcom/vungle/publisher/ama$a;

    .line 155
    new-instance v0, Lcom/vungle/publisher/ama$a;

    sget-object v1, Lcom/vungle/publisher/ama$a;->c:[Lcom/vungle/publisher/ama$b;

    invoke-direct {v0, v3, v1}, Lcom/vungle/publisher/ama$a;-><init>(Z[Lcom/vungle/publisher/ama$b;)V

    sput-object v0, Lcom/vungle/publisher/ama$a;->e:Lcom/vungle/publisher/ama$a;

    return-void
.end method

.method public constructor <init>(Z[Lcom/vungle/publisher/ama$b;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-boolean p1, p0, Lcom/vungle/publisher/ama$a;->a:Z

    .line 159
    iput-object p2, p0, Lcom/vungle/publisher/ama$a;->b:[Lcom/vungle/publisher/ama$b;

    .line 160
    return-void
.end method
