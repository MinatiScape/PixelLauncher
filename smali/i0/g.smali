.class public Li0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li0/l;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:[Ljava/lang/String;

.field public final synthetic c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li0/g;->a:Ljava/lang/String;

    iput-object p2, p0, Li0/g;->b:[Ljava/lang/String;

    iput-object p3, p0, Li0/g;->c:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroidx/slice/SliceItem;

    invoke-virtual {p0, p1}, Li0/g;->b(Landroidx/slice/SliceItem;)Z

    move-result p0

    return p0
.end method

.method public b(Landroidx/slice/SliceItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Li0/g;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Li0/m;->a(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li0/g;->b:[Ljava/lang/String;

    .line 2
    invoke-static {p1, v0}, Li0/m;->r(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Li0/g;->c:[Ljava/lang/String;

    invoke-static {p1, p0}, Li0/m;->q(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
