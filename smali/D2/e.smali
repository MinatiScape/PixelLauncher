.class public LD2/e;
.super LD/o;
.source "SourceFile"


# instance fields
.field public final synthetic a:LD2/i;

.field public final synthetic b:LD2/g;


# direct methods
.method public constructor <init>(LD2/g;LD2/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, LD2/e;->b:LD2/g;

    iput-object p2, p0, LD2/e;->a:LD2/i;

    invoke-direct {p0}, LD/o;-><init>()V

    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, LD2/e;->b:LD2/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LD2/g;->c(LD2/g;Z)Z

    .line 2
    iget-object p0, p0, LD2/e;->a:LD2/i;

    invoke-virtual {p0, p1}, LD2/i;->a(I)V

    return-void
.end method

.method public e(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    iget-object v0, p0, LD2/e;->b:LD2/g;

    iget v1, v0, LD2/g;->f:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {v0, p1}, LD2/g;->b(LD2/g;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2
    iget-object p1, p0, LD2/e;->b:LD2/g;

    const/4 v0, 0x1

    invoke-static {p1, v0}, LD2/g;->c(LD2/g;Z)Z

    .line 3
    iget-object p1, p0, LD2/e;->a:LD2/i;

    iget-object p0, p0, LD2/e;->b:LD2/g;

    invoke-static {p0}, LD2/g;->a(LD2/g;)Landroid/graphics/Typeface;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, LD2/i;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
