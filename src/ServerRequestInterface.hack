namespace Ytake\Extended\HttpMessage;

use namespace Facebook\Experimental\Http\Message;

interface ServerRequestInterface extends Message\ServerRequestInterface {

  public function getAttributes(): dict<string, mixed>;

  public function getAttribute<T>(string $name, ?T $default = null): ?T;

  public function withAttribute(string $name, mixed $value): this;

  public function withoutAttribute(string $name): this;
}
