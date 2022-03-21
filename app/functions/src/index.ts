import * as functions from 'firebase-functions';
import { Todo } from './models/Todo';

export const helloWorld = functions.https.onRequest((request, response) => {
  const todo = {
    id: 1,
    body: 'Hello World',
  } as Todo;
  functions.logger.info(todo, { structuredData: true });
  response.send(todo);
});
