# ex:ts=8 sw=4:
# $OpenBSD: Roach.pm,v 1.1 2019/10/28 14:24:30 espie Exp $
#
# Copyright (c) 2019 Marc Espie <espie@openbsd.org>
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
use strict;
use warnings;

package DPB::Roach;
# handles roach information, if required

sub new
{
	my ($class, $engine, $logger, $state) = @_;
	my $o = bless {
	    paths => {},
	    engine => $engine, 
	    logger => $logger, 
	    state => $state
	    }, $class;
	return $o;
}

sub factoryclass
{
	return "DPB::RoachInfo";
}

sub build_roachinfo
{
	my ($self, $h) = @_;
	my $f = $self->factoryclass;
	for my $v (values %$h) {
		if (exists $self->{paths}{$v->pkgpath}) {
			$f->forget_roachinfo($v);
		} else {
			my $r = $f->new($v);
			$self->{paths}{$v->pkgpath} = $r;
			$self->{engine}->new_roach($r);
		}
	}
}

package DPB::RoachInfo;

sub new
{
	my ($class, $v) = @_;
	my $o = bless {}, $class;
	$class->forget_roachinfo($v);
}

sub forget_roachinfo
{
	my ($class, $v) = @_;
	for my $d (qw(HOMEPAGE PORTROACH PORTROACH_COMMENT MAINTAINER)) {
		delete $v->{info}{$d};
	}
}

1;
